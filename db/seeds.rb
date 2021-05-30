# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@colorado = State.create({
  name: 'Colorado',
  description: 'Colorado, a western U.S. state, has a diverse landscape of arid desert, river canyons and snow-covered Rocky Mountains, which are partly protected by Rocky Mountain National Park. Elsewhere, Mesa Verde National Park features Ancestral Puebloan cliff dwellings. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area. - Google',
  flag_image: asset_path('images/colorado_map.png'), captitol_name: 'Denver',
  population: 5,773,714}
  })

# @california = State.create({
#   name: 'California',
#   description: '',
#   flag_image: asset_path(''),
#   captitol_name: '',
#   population: ''} })

colorado_fact_1 = Fact.create({
  title: 'Colorado is home to the world’s largest natural hot springs swimming pool.',
  details: 'Glenwood Springs houses the largest mineral pool in the world, it is also one of the hottest in Colorado. The source of the Glenwood Hot Springs’s mineral water is the Yampah spring. The spring produces over 3.5 million gallons of water per day at a scolding 122F.',
  lat: '39.544079',
  lng: '-107.324821',
  state_id: @colorado.id
  })

colorado_fact_2 = Fact.create({
  title: 'Colorado has the world’s largest flat-top mountain.',
  details: 'The Grand Mesa is known as the largest flattop mountain in the world. Spanning hundreds of square miles and standing more than 10,000 feet above sea level, the Grand Mesa is home to various wildlife, distinct geologic features, national forest, and beautiful views. The Grand Mesa, which Is located close to Grand Junction, has a total area of around 500 square miles, reaching as far as both the Colorado and Gunnison rivers. Most of the mesa itself is located within the Grand Mesa National Forest, which is inhabited by many species of animal.',
  lat: '38.920980',
  lng: '-104.713220',
  state_id: @colorado.id
  })
