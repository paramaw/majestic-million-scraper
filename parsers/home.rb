
nokogiri = Nokogiri.HTML(content)

title = nokogiri.at('title').try(:text)

doc1 = {
    _collection: "home",
    url: page['url'],
    effective_url: page['effective_url'],
    title: title,
    content_type: page['content_type'],
    content_size: page['content_size']
}

outputs << doc1