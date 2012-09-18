# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


interior = FieldGroup.create(:label => 'Equipements interieurs')
exterior = FieldGroup.create(:label => 'Equipements exterieurs')
building = FieldGroup.create(:label => 'Batiment')
annexe = FieldGroup.create(:label => 'Service annexes')



Field.create(:label => 'Sauna', :field_group_id => interior.id)
Field.create(:label => 'Piscine', :field_group_id => interior.id)