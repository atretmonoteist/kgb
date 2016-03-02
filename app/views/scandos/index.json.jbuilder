json.array!(@scandos) do |scando|
  json.extract! scando, :id, :do_name, :do_description, :do_address, :do_phone, :do_fax
  json.url scando_url(scando, format: :json)
end
