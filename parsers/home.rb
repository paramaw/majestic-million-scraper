
nokogiri = Nokogiri.HTML(content)

noko_title = nokogiri.at('title')
title = noko_title.text unless noko_title.nil? 

doc1 = {
    _collection: "home",
    url: page['url'],
    effective_url: page['effective_url'],
    title: title,
    content_type: page['content_type'],
    content_size: page['content_size']
}

# outputs << doc1