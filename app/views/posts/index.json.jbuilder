json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :author, :source, :site_url, :tag_list
  json.url post_url(post, format: :json)
end
