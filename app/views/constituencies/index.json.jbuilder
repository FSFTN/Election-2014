json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :name, :state_id, :wikipedia_link
  json.url constituency_url(constituency, format: :json)
end
