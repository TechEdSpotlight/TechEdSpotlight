json.array!(@stories) do |story|
  json.extract! story, :id, :title, :overview, :story, :source, :user_id, :published
  json.url story_url(story, format: :json)
end
