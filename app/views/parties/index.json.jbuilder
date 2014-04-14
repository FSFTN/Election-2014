json.array!(@parties) do |party|
  json.extract! party, :id, :name, :symbol, :manifesto, :official_website, :wikipedia_link, :president
  json.url party_url(party, format: :json)
end
