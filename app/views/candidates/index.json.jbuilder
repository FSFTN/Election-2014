json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :party_id, :avatar, :wikipedia_link, :age
  json.url candidate_url(candidate, format: :json)
end
