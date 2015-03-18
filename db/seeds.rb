# admin
admin = Admin.new
admin.email = "admin@mail.com"
admin.password = "liqo1234"
admin.save

# Materi Kultum
materi_kultum = ['Mengenal 10 Sahabat yang Dijamin Masuk Surga', 'Wanita-wanita Pengukir Sejarah', 'Keutamaan Adzan',
                 'Keutamaan Sholat Berjamaah', 'Keutamaan Salam', 'Menjauhi Tempat Haram', 'Syukur', 
                 'Keutamaan Tilawah dan Khatam Quran', 'Keutamaan Sholat Sunah']
materi_kultum.each do |kultum|
  materi = MateriKultum.new
  materi.title = kultum
  materi.save
end

# Materi Talaqi
materi_talaqi = ["Mengenal Alqur'an", 'Maiyatullah', 'Birulwalidaini dan Silaturahmi',
                 'Mukadimah Sirah', 'Ghazul Fikri', 'Membangun Pribadi yang Islami', 'Tabaruz dan Ikhtilat', 
                 'Hukum Sholat', 'Aksi Social Rasullah Usia 13-39 Tahun']
materi_talaqi.each do |talaqi|
  materi = MateriTalaqi.new
  materi.title = talaqi
  materi.save
end