CSV.foreach("./seeder/majestic_million_small.csv",:headers => true) do |row|
    pages << {
      url: "http://#{row['Domain']}",
      page_type: 'home',
    }
  
    # Save pages to the job partially to not load everything into memory
    max_records = 100
    save_pages(pages) if $. % max_records == 0
  end
  
  