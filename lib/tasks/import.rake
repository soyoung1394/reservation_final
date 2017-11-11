namespace :import do
  task restaurants: :environment do

    create_count = 0
    
    xml = File.open(Rails.root.join('lib', 'tasks', 'restaurant.xml'))
    data = Hash.from_xml(xml)
    
    data["root"]["Row"].first(100).each do |row|
        Restaurant.create!(
            name: row["업소명"],
            address: row["소재지_지번_"],
            phone_number: row["소재지전화"],
            category: row["업태명"],
            image: row["image"] #TODO ||= default image url 
        )
        
        create_count += 1
        print "# Creating... #{create_count}\r"
    end

    puts "# Done. Create #{create_count} restaurants."

  end

end