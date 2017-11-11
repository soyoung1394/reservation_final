
Restaurant.all.each do |r|
    arr = r.address.split ' '
    arr.shift 2
    r.location = arr.first.include?('동') ? arr[0] : arr[1]
    r.save
end

