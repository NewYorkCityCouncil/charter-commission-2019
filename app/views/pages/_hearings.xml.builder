base_url = "http://#{request.host_with_port}"

@hearings.each do |hearing|
  xml.url do
    xml.loc base_url+show_hearing_path(hearing.date_of_hearing)
  end

end