# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#<City id: nil, name: nil, created_at: nil, updated_at: nil> 

City.create!(name: "CABA")
City.create!(name: "Moron")
City.create!(name: "Lujan")
City.create!(name: "Corrientes")

users = [
{ city_id: City.find_by(name: "CABA").id, email: "emprendedora@keywo.com.ar", password: "clave12345", password_confirmation: "clave12345", user_type: "emprendedora", name: "Carolina", address: "742 Evergreen Terrace" },
{ city_id: City.find_by(name: "Moron").id, email: "emprendedora2@keywo.com.ar", password: "clave12345", password_confirmation: "clave12345", user_type: "emprendedora", name: "Romina Chaparro", address: "742 Evergreen Terrace" },
{ city_id: City.find_by(name: "Lujan").id, email: "emprendedora3@keywo.com.ar", password: "clave12345", password_confirmation: "clave12345", user_type: "emprendedora", name: "Soledad", address: "742 Evergreen Terrace" },
{ city_id: City.find_by(name: "Corrientes").id, email: "emprendedora4@keywo.com.ar", password: "clave12345", password_confirmation: "clave12345", user_type: "emprendedora", name: "Lima", address: "742 Evergreen Terrace" },
{ city_id: City.find_by(name: "CABA").id, email: "inversora@keywo.com.ar", password: "clave12345", password_confirmation: "clave12345", user_type: "inversora", name: "Canela", address: "742 Evergreen Terrace" },
{ city_id: City.find_by(name: "CABA").id, email: "colaboradora1@keywo.com.ar", password: "clave12345", password_confirmation: "clave12345", user_type: "colaboradora", name: "Evangelina", address: "742 Evergreen Terrace" },
{ city_id: City.find_by(name: "CABA").id, email: "colaboradora2@keywo.com.ar", password: "clave12345", password_confirmation: "clave12345", user_type: "colaboradora", name: "Camila Bello", address: "742 Evergreen Terrace" }
  ]

users.each do |user|
  User.create!(user)
end

#<Sector id: nil, name: nil, description: nil, created_at: nil, updated_at: nil> 
Sector.create!(name: "Textil")
Sector.create!(name: "Comida")
Sector.create!(name: "Alimentos")
Sector.create!(name: "Servicios")


 #<Project sector_id: nil, marca: nil, descripcion: nil, necesidad_dinero: nil, necesidad_colaboradores: nil, necesidad_colaboradores_cantidad: nil, necesidad_otra: nil, created_at: nil, updated_at: nil> 

projects = [
{user_id: 1, sector_id: "1", marca: "Mi proyecto", descripcion: "mi proyecto consiste en ...", necesidad_dinero: "100", necesidad_colaboradores: "coser", necesidad_colaboradores_cantidad: "5", necesidad_otra: "diseño indumentaria, modista"},
{user_id: 1, sector_id: "1", marca: "Mi proyecto", descripcion: "mi proyecto consiste en ...", necesidad_dinero: "100", necesidad_colaboradores: "coser", necesidad_colaboradores_cantidad: "5", necesidad_otra: "diseño indumentaria, modista"},
{user_id: 2, sector_id: "1", marca: "Mi proyecto", descripcion: "mi proyecto consiste en ...", necesidad_dinero: "100", necesidad_colaboradores: "coser", necesidad_colaboradores_cantidad: "5", necesidad_otra: "diseño indumentaria, modista"},
{user_id: 2, sector_id: "1", marca: "Mi proyecto", descripcion: "mi proyecto consiste en ...", necesidad_dinero: "100", necesidad_colaboradores: "coser", necesidad_colaboradores_cantidad: "5", necesidad_otra: "diseño indumentaria, modista"},
{user_id: 3, sector_id: "1", marca: "Mi proyecto", descripcion: "mi proyecto consiste en ...", necesidad_dinero: "100", necesidad_colaboradores: "coser", necesidad_colaboradores_cantidad: "5", necesidad_otra: "diseño indumentaria, modista"}
]

projects.each do |project|
  Project.create!(project)
end