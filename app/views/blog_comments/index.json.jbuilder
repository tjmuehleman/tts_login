json.array!(@blog_comments) do |blog_comment|
  json.extract! blog_comment, :id, :entry_text, :user_id, :blog_entry_id, :entry_date
  json.url blog_comment_url(blog_comment, format: :json)
end
