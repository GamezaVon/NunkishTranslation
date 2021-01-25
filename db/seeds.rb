# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
usersList = Array.new
file = File.readlines("C:\\Users\\Daniel_Gamez\\Desktop\\Credenciales.csv")
arr = file.map{ |x| x[0..-2]} 
users = arr.map{|x| x.split(',')}
users.each { |x|
    user = User.new(username: "#{x[0]}", password: "#{x[1]}", database:"#{x[2]}" )
    user.save
}