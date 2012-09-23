# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


propertyType = FieldGroup.create(:label => 'Property Type')
accommodationType = FieldGroup.create(:label => 'Accommodation Type')
floorArea = FieldGroup.create(:label => 'Floor Area')
locationType = FieldGroup.create(:label => 'Location Type')
theme = FieldGroup.create(:label => 'Theme')
general = FieldGroup.create(:label => 'General')
kitchen = FieldGroup.create(:label => 'Kitchen')
dining = FieldGroup.create(:label => 'Dining')
bathrooms = FieldGroup.create(:label => 'Bathrooms')
bedrooms = FieldGroup.create(:label => 'Bedrooms')
entertainment = FieldGroup.create(:label => 'Entertainment')
internetAccess = FieldGroup.create(:label => 'Internet Access')
outside = FieldGroup.create(:label => 'Outside')
suitability = FieldGroup.create(:label => 'Suitability')
attractions = FieldGroup.create(:label => 'Attractions')
leisureActivities = FieldGroup.create(:label => 'Leisure Activities')
localServicesBusinesses = FieldGroup.create(:label => 'Local Services & Businesses')
sportsAdventureActivities = FieldGroup.create(:label => 'Sports & Adventure Activities')
notes = FieldGroup.create(:label => 'Notes')



#propertyType
Field.create(:label => 'house', :field_group_id => propertyType.id)
Field.create(:label => 'Appartment', :field_group_id => propertyType.id)

#accommodationType
Field.create(:label => 'self-catering', :field_group_id => accommodationType.id)

#floorArea

#locationType
Field.create(:label => 'city centre', :field_group_id => locationType.id)

#theme
Field.create(:label => 'historic', :field_group_id => theme.id)
Field.create(:label => 'family', :field_group_id => theme.id)

#general
Field.create(:label => 'central heating', :field_group_id => general.id)
Field.create(:label => 'laundry soap', :field_group_id => general.id)
Field.create(:label => 'central heating', :field_group_id => general.id)
Field.create(:label => 'local restaurant guide', :field_group_id => general.id)
Field.create(:label => 'shampoo', :field_group_id => general.id)
Field.create(:label => 'laundry soap', :field_group_id => general.id)
Field.create(:label => 'soap', :field_group_id => general.id)
Field.create(:label => 'hair dryer', :field_group_id => general.id)
Field.create(:label => 'linen provided', :field_group_id => general.id)
Field.create(:label => 'alarm clock', :field_group_id => general.id)
Field.create(:label => 'local maps', :field_group_id => general.id)
Field.create(:label => 'towels provided', :field_group_id => general.id)
Field.create(:label => 'local activities guide', :field_group_id => general.id)
Field.create(:label => 'toilet paper', :field_group_id => general.id)

#kitchen
Field.create(:label => '4 ring stove', :field_group_id => kitchen.id)
Field.create(:label => 'grill', :field_group_id => kitchen.id)
Field.create(:label => 'clothes dryer', :field_group_id => kitchen.id)
Field.create(:label => 'washing machine', :field_group_id => kitchen.id)
Field.create(:label => 'microwave', :field_group_id => kitchen.id)
Field.create(:label => 'spices', :field_group_id => kitchen.id)
Field.create(:label => 'coffee maker', :field_group_id => kitchen.id)
Field.create(:label => 'oven', :field_group_id => kitchen.id)
Field.create(:label => 'iron & board', :field_group_id => kitchen.id)
Field.create(:label => 'cooking utensils', :field_group_id => kitchen.id)
Field.create(:label => 'toaster', :field_group_id => kitchen.id)
Field.create(:label => 'mini-fridge', :field_group_id => kitchen.id)
Field.create(:label => 'freezer', :field_group_id => kitchen.id)
Field.create(:label => 'fridge', :field_group_id => kitchen.id)


