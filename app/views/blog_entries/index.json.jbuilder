json.array!(@blog_entries) do |blog_entry|
  json.extract! blog_entry, :id, :user_id, :blog_id, :entry, :subject, :category
  json.url blog_entry_url(blog_entry, format: :json)
end
