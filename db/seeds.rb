
10.times do
  Salon.create(email: Faker::Internet.email,  password: 'password')
end

10.times do
  Detail.create(name: Faker::Company.name , phone: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address, area: Faker::Address.state, website: 'http://www.salonvim.sg/', logo_url: Faker::Company.logo, salon_id: rand(1..10))
end

10.times do
  Photo.create(photo_url: "https://beautyundercoverproduction.s3.amazonaws.com/salons/photo_covers/000/000/271/cover_frontend/Salon_Vim_Cover1.jpg?1479204599",salon_id: rand(1..10))
end

myArray = ["Cut", "Cut + Wash", "Wash", "Straightening", "Curl", "Hair Treatment", "Scalp Treatment", "Hair + Scalp Treatment" ]

10.times do
  Service.create(name: myArray.sample, price: rand(20..100), salon_id: rand(1..10) )
end

10.times do
  Appointment.create(name: Faker::Name.first_name, phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email,service_id: rand(1..10) )
end