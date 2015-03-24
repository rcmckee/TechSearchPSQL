json.array!(@posts) do |post|
  json.extract! post, :id, :heading, :title, :link, :details, :institution
  json.url post_url(post, format: :json)
end
