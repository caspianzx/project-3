
10.times do
  Salon.create(email: Faker::Internet.email,  password: 'password')
end

a = 0

10.times do
  Detail.create(name: Faker::Company.name , phone: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address, area: Faker::Address.state, website: 'http://www.salonvim.sg/', logo_url: Faker::Company.logo, salon_id: a += 1)
end

b = 0

10.times do
  Photo.create(photo_url: "https://beautyundercoverproduction.s3.amazonaws.com/salons/photo_covers/000/000/271/cover_frontend/Salon_Vim_Cover1.jpg?1479204599",salon_id: b += 1)
end

myArray = ["Cut", "Cut + Wash", "Wash", "Straightening", "Curl", "Hair Treatment", "Scalp Treatment", "Hair + Scalp Treatment", "Hair Dyeing" ]

c = 0

10.times do
  Service.create(name: myArray[0], price: rand(20..30), salon_id: c += 1 )
end

d = 0

10.times do
  Service.create(name: myArray[1], price: rand(20..50), salon_id: d += 1 )
end

e = 0

10.times do
  Service.create(name: myArray[2], price: rand(60..120), salon_id: e += 1 )
end

f = 0

10.times do
  Service.create(name: myArray[3], price: rand(60..120), salon_id: f += 1 )
end

g = 0

10.times do
  Service.create(name: myArray[4], price: rand(100..150), salon_id: g += 1 )
end

h = 0

10.times do
  Service.create(name: myArray[5], price: rand(100..150), salon_id: h += 1 )
end

i = 0

10.times do
  Service.create(name: myArray[6], price: rand(100..150), salon_id: i += 1 )
end


j = 0

10.times do
  Service.create(name: myArray[7], price: rand(100..150), salon_id: j += 1 )
end

k = 0

10.times do
  Service.create(name: myArray[8], price: rand(150..200), salon_id: k += 1 )
end


50.times do
  Appointment.create(name: Faker::Name.first_name, phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email,service_id: rand(1..10) )
end