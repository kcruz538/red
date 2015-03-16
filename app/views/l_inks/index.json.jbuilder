json.array!(@l_inks) do |l_ink|
  json.extract! l_ink, :id, :title, :url
  json.url l_ink_url(l_ink, format: :json)
end
