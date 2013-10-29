json.array!(@privilege_levels) do |privilege_level|
  json.extract! privilege_level, :name
  json.url privilege_level_url(privilege_level, format: :json)
end
