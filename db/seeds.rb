
# 11.times do
#   Salon.create(email: Faker::Internet.email,  password: 'password')
# end

# a = 0

# 10.times do
#   Detail.create(name: Faker::Company.name , phone: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address, area: Faker::Address.state, website: 'http://www.salonvim.sg/', logo_url: Faker::Company.logo, salon_id: a += 1)
# end

Salon.create(email: "covo@email.com",  password: 'password')
Detail.create(name: "Covo Outram Park", phone: "6221 4585", address: "43 Keong Saik Road Singapore 089147", area: "Outram Park", website: "http://www.covosg.com/en", logo_url: "http://www.covosg.com/images/logo_b.png", salon_id: "1")

Service.create(name:"Cut and Wash" , price:"78" , salon_id:"1" )
Service.create(name:"Colour" , price:"130" , salon_id:"1" )
Service.create(name:"Perm" , price:"170" , salon_id:"1" )
Service.create(name:"Rebonding" , price:"300" , salon_id:"1")
Service.create(name:"Treatment" , price:"55" , salon_id:"1" )

Salon.create(email: "salonvim@email.com",  password: 'password')
Detail.create(name:"Salon Vim" , phone:"6734 6404" , address:"435 Orchard Road #02-01B Singapore 238877" , area: "Orchard", website: "http://www.salonvim.sg", logo_url:"https://i.imgur.com/GJjxLvV.png" , salon_id:"2" )

Service.create(name:"Cut and Wash" , price: "50", salon_id:"2" )
Service.create(name:"Colour" , price:"105" , salon_id:"2" )
Service.create(name:"Perm" , price:"250" , salon_id:"2" )
Service.create(name:"Rebonding" , price:"200" , salon_id:"2" )
Service.create(name:"Treatment" , price:"120" , salon_id:"2" )

Salon.create(email: "kimage@email.com" ,  password: 'password')
Detail.create(name:"Kimage" , phone:"6883 2700" , address:"Marina Square
#02-09 6 Raffles Boulevard Singapore 039594", area:"Central" , website:"https://kimage.com.sg" , logo_url:"https://kimage.com.sg/hair/wp-content/uploads/2019/04/kimage-logo-small.png", salon_id:"3" )

Service.create(name:"Cut and Wash" , price: "40", salon_id:"3" )
Service.create(name:"Colour" , price:"90" , salon_id:"3" )
Service.create(name:"Perm" , price:"80" , salon_id:"3" )
Service.create(name:"Rebonding" , price:"200" , salon_id:"3" )
Service.create(name:"Treatment" , price:"70" , salon_id:"3" )

Salon.create(email:"kizukilim@email.com" ,  password: 'password')
Detail.create(name:"Kizuki+Lim" , phone:"6221 6320" , address:"31 Seah Street Singapore 188387", area:"Central" , website:"https://www.lessismore.co.jp/kizuki" , logo_url:"https://i.imgur.com/wPNbLHZ.jpg", salon_id:"4" )

Service.create(name:"Cut and Wash" , price: "50", salon_id:"4")
Service.create(name:"Colour" , price:"100" , salon_id:"4" )
Service.create(name:"Perm" , price:"150" , salon_id:"4" )
Service.create(name:"Rebonding" , price:"280" , salon_id:"4" )
Service.create(name:"Treatment" , price:"50" , salon_id:"4" )

Salon.create(email: "apujeong@email.com",  password: 'password')
Detail.create(name:"Apgujeong @ Bishan Junction 8" , phone:"6250 9937" , address:"9 Bishan Place, #02-18
Junction 8 Shopping Mall, Singapore 579837", area:"Central" , website:"https://www.apgujeonghair.com" , logo_url:"https://www.apgujeonghair.com/uploads/6/0/4/9/604929/2132800.jpg", salon_id:"5" )

Service.create(name:"Cut and Wash" , price: "38", salon_id:"5" )
Service.create(name:"Colour" , price:"100" , salon_id:"5"  )
Service.create(name:"Perm" , price:"155" , salon_id:"5" )
Service.create(name:"Rebonding" , price:"220" , salon_id:"5"  )
Service.create(name:"Treatment" , price:"120" , salon_id:"5"  )

Salon.create(email: "shunjimatsuo@email.com" ,  password: 'password')
Detail.create(name:"Shunji Matsuo" , phone:"6238 1522" , address:"Ngee Ann City, Tower B #05-23, 391 Orchard Road, Singapore 238872", area:"Central" , website:"https://shunjimatsuo.com.sg/saloon/ngee-ann-city/" , logo_url:"https://shunjimatsuo.com.sg/wp-content/uploads/2018/02/logo.png", salon_id:"6" )

Service.create(name:"Cut and Wash" , price: "60", salon_id:"6")
Service.create(name:"Colour" , price:"105" , salon_id:"6" )
Service.create(name:"Perm" , price:"208" , salon_id:"6" )
Service.create(name:"Rebonding" , price:"275" , salon_id:"6" )
Service.create(name:"Treatment" , price:"80" , salon_id:"6" )

Salon.create(email: "toniandguy@email.com",  password: 'password')
Detail.create(name:"Toni & Guy" , phone:"6835 4556" , address:"#03-17 Mandarin Gallery 333A Orchard Road, Singapore 238897", area:"Central" , website:"https://www.toniandguy.sg" , logo_url:"https://i.imgur.com/5WmvP0W.png", salon_id:"7" )

Service.create(name:"Cut and Wash" , price: "86", salon_id:"7")
Service.create(name:"Colour" , price:"129" , salon_id:"7" )
Service.create(name:"Perm" , price:"321" , salon_id:"7" )
Service.create(name:"Rebonding" , price:"482" , salon_id:"7" )
Service.create(name:"Treatment" , price:"75" , salon_id:"7" )

Salon.create(email:"chezvous@email.com" ,  password: 'password')
Detail.create(name:"Chez Vous" , phone:"6732 9388" , address:"391 Orchard Road #05-05 Ngee Ann City Podium Singapore 238872", area:"Orchard" , website:"https://chezvoushair.com" , logo_url:"https://i.imgur.com/OIq9GXv.png", salon_id:"8" )

Service.create(name:"Cut and Wash" , price: "58", salon_id:"8")
Service.create(name:"Colour" , price:"133" , salon_id:"8" )
Service.create(name:"Perm" , price:"144" , salon_id:"8" )
Service.create(name:"Rebonding" , price:"144" , salon_id:"8" )
Service.create(name:"Treatment" , price:"" , salon_id:"8" )

Salon.create(email: "protrim@email.com",  password: 'password')
Detail.create(name:"Pro Trim" , phone:"6734 7883 / 6734 7882" , address:"50 Jurong Gateway, Jurong East Mall (JEM), #04-55 Singapore 608549", area:"Jurong" , website:"www.protrimsalon.sg" , logo_url:"https://www.japarang.com/wp-content/uploads/2017/08/20615820_1602911649778766_8704417786158048655_o.jpg", salon_id:"9" )

Service.create(name:"Cut and Wash" , price: "50", salon_id:"9")
Service.create(name:"Colour" , price:"95" , salon_id:"9" )
Service.create(name:"Perm" , price:"155" , salon_id:"9" )
Service.create(name:"Rebonding" , price:"" , salon_id:"9" )
Service.create(name:"Treatment" , price:"65" , salon_id:"9" )

Salon.create(email: "zinc@email.com",  password: 'password')
Detail.create(name:"Zinc Salon" , phone:"6235 9891" , address:"Millenia Walk, 9 Raffles Boulevard, #02-48/49 Singapore 039596", area:"Central" , website:"https://www.zincsalon.kr" , logo_url:"https://www.japarang.com/wp-content/uploads/2017/08/11731645_1643650529244402_896890587889878593_o.jpg", salon_id:"10" )

Service.create(name:"Cut and Wash" , price: "55", salon_id:"10")
Service.create(name:"Colour" , price:"150" , salon_id:"10" )
Service.create(name:"Perm" , price:"150" , salon_id:"10" )
Service.create(name:"Rebonding" , price:"240" , salon_id:"10" )
Service.create(name:"Treatment" , price:"150" , salon_id:"10" )

Salon.create(email:"art-noise@email.com" ,  password: 'password')
Detail.create(name:"Art Noise" , phone:"6463 3651" , address:" 38A Lor Mambong, Singapore 277694", area:"Holland Village" , website:"https://www.art-noise.sg" , logo_url:"https://www.art-noise.sg/jp/blog/wp-content/uploads/2016/08/instagram_logo-300x300.png", salon_id:"11" )

Service.create(name:"Cut and Wash" , price: "86", salon_id:"11")
Service.create(name:"Colour" , price:"139" , salon_id:"11" )
Service.create(name:"Perm" , price:"150" , salon_id:"11" )
Service.create(name:"Rebonding" , price:"139" , salon_id:"11" )
Service.create(name:"Treatment" , price:"86" , salon_id:"11" )

b = 0

pArray = ["https://beautyundercoverproduction.s3.amazonaws.com/salons/photo_covers/000/000/271/cover_frontend/Salon_Vim_Cover1.jpg?1479204599", "http://www.zenredsalonbangkok.com/images/zenred-salon-bangkok.JPG",
"https://www.gowabi.com/system/pictures/images/000/007/120/big_slider_pic/HummingHair_lead.jpg?1531884328", "https://www.gowabi.com/system/pictures/images/000/007/115/big_slider_pic/HummingHair_5.jpg?1531884253"]

11.times do
  Photo.create(photo_url: pArray[0],salon_id: b += 1)
end

b1 = 0

11.times do
  Photo.create(photo_url: pArray[1],salon_id: b1 += 1)
end

b2 = 0

11.times do
  Photo.create(photo_url: pArray[2],salon_id: b2 += 1)
end

b3 = 0


11.times do
  Photo.create(photo_url: pArray[3],salon_id: b3 += 1)
end

# myArray = ["Cut", "Cut + Wash", "Wash", "Straightening", "Curl", "Hair Treatment", "Scalp Treatment", "Hair + Scalp Treatment", "Hair Dyeing" ]

# c = 0

# 10.times do
#   Service.create(name: myArray[0], price: rand(20..30), salon_id: c += 1 )
# end

# d = 0

# 10.times do
#   Service.create(name: myArray[1], price: rand(20..50), salon_id: d += 1 )
# end

# e = 0

# 10.times do
#   Service.create(name: myArray[2], price: rand(60..120), salon_id: e += 1 )
# end

# f = 0

# 10.times do
#   Service.create(name: myArray[3], price: rand(60..120), salon_id: f += 1 )
# end

# g = 0

# 10.times do
#   Service.create(name: myArray[4], price: rand(100..150), salon_id: g += 1 )
# end

# h = 0

# 10.times do
#   Service.create(name: myArray[5], price: rand(100..150), salon_id: h += 1 )
# end

# i = 0

# 10.times do
#   Service.create(name: myArray[6], price: rand(100..150), salon_id: i += 1 )
# end


# j = 0

# 10.times do
#   Service.create(name: myArray[7], price: rand(100..150), salon_id: j += 1 )
# end

# k = 0

# 10.times do
#   Service.create(name: myArray[8], price: rand(150..200), salon_id: k += 1 )
# end

l = 0
11.times do
  l += 1
  m = 9
  11.times do
    Timeslot.create(time: (m += 1), salon_id: (l))
  end
end

50.times do
  Appointment.create(name: Faker::Name.first_name, phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email,service_id: rand(1..55), timeslot_id: rand(1..100) )
end

z = Timeslot.all.select {|slot| slot.appointments != [] }
z.each do |slot|
  slot.booked = 1
  slot.save
end




# n = 0
# 5.times do
#   x = Salon.find(1)
#   x.timeslots.appointments << Appointment.create(name: Faker::Name.first_name, phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, service_id: rand(1..10) )
# end