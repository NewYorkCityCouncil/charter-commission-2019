# app/views/sitemap/_common.xml.builder

base_url = "http://#{request.host_with_port}/"

@static_pages.each do |page|
  xml.url do
    xml.loc base_url+page
  end

end