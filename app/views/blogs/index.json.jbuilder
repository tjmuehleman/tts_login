json.array!(@blogs) do |blog|
  json.extract! blog, :id, :user_id, :subject, :entry
  json.url blog_url(blog, format: :json)
end
