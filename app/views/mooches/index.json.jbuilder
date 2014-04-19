json.array!(@mooches) do |mooch|
  json.extract! mooch, :id, :description, :user_id
  json.url mooch_url(mooch, format: :json)
end
