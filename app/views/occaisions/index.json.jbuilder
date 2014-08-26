json.array!(@occaisions) do |occaision|
  json.extract! occaision, :id, :message, :name, :date, :occaision_type, :recipient_id
  json.url occaision_url(occaision, format: :json)
end
