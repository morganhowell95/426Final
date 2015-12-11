json.array!(@usercodes) do |usercode|
  json.extract! usercode, :id, :code, :user_id
  json.url usercode_url(usercode, format: :json)
end
