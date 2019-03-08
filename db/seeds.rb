# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Role.destroy_all
User.destroy_all

(1..10).each do |i|
  role = Role.new
  role.name = "Role #{i}"
  role.active!
  role.save
end

100.times do |i|
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.email
  u.role_ids = Role.ids.sample
  if u.save
    puts(u.email)
  end

end