json.array!(@tablenames) do |tablename|
  json.extract! tablename, :id, :name, :capacity
  json.url tablename_url(tablename, format: :json)
end
