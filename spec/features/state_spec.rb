# require 'rails_helper'
#
# RSpec.describe 'State index page' do
#   before :each do
#     State.destroy_all
#     Fact.destroy_all
#     @colorado = State.create({
#       name: 'Colorado',
#       description: 'Colorado, a western U.S. state, has a diverse landscape of arid desert, river canyons and snow-covered Rocky Mountains, which are partly protected by Rocky Mountain National Park. Elsewhere, Mesa Verde National Park features Ancestral Puebloan cliff dwellings. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area. - Google',
#       flag_image: ('/assets/images/colorado_map.png'),
#       capitol_name: 'Denver',
#       population: 5773714
#       })
#
#     @colorado_fact_1 = Fact.create({
#       title: 'Colorado is home to the world’s largest natural hot springs swimming pool.',
#       details: 'Glenwood Springs houses the largest mineral pool in the world, it is also one of the hottest in Colorado. The source of the Glenwood Hot Springs’s mineral water is the Yampah spring. The spring produces over 3.5 million gallons of water per day at a scolding 122F.',
#       lat: 39.544079,
#       lng: -107.324821,
#       state_id: @colorado.id
#       })
#
#     @colorado_fact_2 = Fact.create({
#       title: 'Colorado has the world’s largest flat-top mountain.',
#       details: 'The Grand Mesa is known as the largest flattop mountain in the world. Spanning hundreds of square miles and standing more than 10,000 feet above sea level, the Grand Mesa is home to various wildlife, distinct geologic features, national forest, and beautiful views. The Grand Mesa, which Is located close to Grand Junction, has a total area of around 500 square miles, reaching as far as both the Colorado and Gunnison rivers. Most of the mesa itself is located within the Grand Mesa National Forest, which is inhabited by many species of animal.',
#       lat: 38.920980,
#       lng: -104.713220,
#       state_id: @colorado.id
#       })
#
#     @california = State.create({
#       name: 'California',
#       description: 'California is a state in the Western United States. It is bordered by Nevada to the east, Arizona to the southeast, the Pacific Ocean to the west, Oregon to the north, and the Mexican state of Baja California to the south.',
#       flag_image: ('/assets/images/colorado_map.png'),
#       capitol_name: 'Sacramento',
#       population: 40000000 })
#
#     @california_fact_1 = Fact.create({
#       title: 'California is home to the original Disneyland',
#       details: 'Disneyland Park, originally Disneyland, is the first of two theme parks built at the Disneyland Resort in Anaheim, California, opened on July 17, 1955. It is the only theme park designed and built to completion under the direct supervision of Walt Disney. It was originally the only attraction on the property; its official name was changed to Disneyland Park to distinguish it from the expanding complex in the 1990s. It was the first Disney theme park.',
#       lat: 33.812092,
#       lng: -117.918976,
#       state_id: @california.id
#       })
#
#     @california_fact_2 = Fact.create({
#         title: 'Calaveras Big Trees State Park is a state park of California, United States, preserving two groves of giant sequoia trees.',
#         details: 'Calaveras became a State Park in 1931 to preserve the North Grove of giant sequoias. This grove includes the “Discovery Tree”, also known as the “Big Stump”, the first Sierra redwood noted by Augustus T. Dowd in 1852. This area has been a major tourist attraction ever since, and is considered the longest continuously operated tourist facility in California.',
#         lat: 38.277300,
#         lng: -120.309960,
#         state_id: @california.id
#         })
#   end
#   # it 'Can load state index page' do
#   #   visit root_path
#   #
#   #   within('#state-name') do
#   #     expect(page).to have_content('Colorado')
#   #   end
#   #
#   #   within('#state-description') do
#   #     expect(page).to have_content('Colorado, a western U.S. state, has a diverse landscape of arid desert, river canyons and snow-covered Rocky Mountains, which are partly protected by Rocky Mountain National Park. Elsewhere, Mesa Verde National Park features Ancestral Puebloan cliff dwellings. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area. - Google')
#   #   end
#   #
#   #   # within('#state-flag_image') do
#   #   #   expect(page).to have_content('/assets/images/colorado_map.png')
#   #   # end
#   #
#   #   within('#state-capitol_name') do
#   #     expect(page).to have_content('Denver')
#   #   end
#   #
#   #   within('#state-population') do
#   #     expect(page).to have_content(5773714)
#   #   end
#   # end
#   it 'Can load state show page' do
#     visit state_path(@colorado.id)
#
#     # within('#specific-state-name') do
#     #   expect(page).to have_content('Colorado')
#     # end
#
#     # within('#specific-state-description') do
#     #   expect(page).to have_content('Colorado, a western U.S. state, has a diverse landscape of arid desert, river canyons and snow-covered Rocky Mountains, which are partly protected by Rocky Mountain National Park. Elsewhere, Mesa Verde National Park features Ancestral Puebloan cliff dwellings. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area. - Google')
#     # end
#
#     # within('#specific-state-flag_image') do
#     #   expect(page).to have_content('/assets/images/colorado_map.png')
#     # end
#
#     # within('#specific-state-capitol_name') do
#     #   expect(page).to have_content('Denver')
#     # end
#     #
#     # within('#specific-state-population') do
#     #   expect(page).to have_content(5773714)
#     # end
#   end
# end
