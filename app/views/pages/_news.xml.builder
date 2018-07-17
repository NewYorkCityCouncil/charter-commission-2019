base_url = "http://#{request.host_with_port}"

@news.each do |news_article|
  xml.url do
    xml.loc base_url+show_news_path(news_article.title)
  end

end