class Post < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search, against: [:title, :link, :details, :institution],
    using: {tsearch: {dictionary: "english"}}


  def self.text_search(query)
    if query.present?
      search(query)
    else
      all
    end
  end
end
