require 'rqrcode'
require 'rqrcode_png'


puts "Saisissez du texte"
saisi = gets.chomp
qr = RQRCode::QRCode.new( saisi, :size => 4, :level => :h )
puts qr.to_s

#save as png
png = qr.to_img                                             
png.resize(90, 90).save("#{saisi}.png")