require 'rails_helper'

describe 'State page' do
  it 'Can load state page with state object attributes' do

    @colorado = State.create({
      name: 'Colorado',
      description: 'Colorado, a western U.S. state, has a diverse landscape of arid desert, river canyons and snow-covered Rocky Mountains, which are partly protected by Rocky Mountain National Park. Elsewhere, Mesa Verde National Park features Ancestral Puebloan cliff dwellings. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area. - Google',
      flag_image: ('/assets/images/colorado_map.png'),
      captitol_name: 'Denver',
      population: 5773714
      })

    colorado_fact_1 = Fact.create({
      title: 'Colorado is home to the world’s largest natural hot springs swimming pool.',
      details: 'Glenwood Springs houses the largest mineral pool in the world, it is also one of the hottest in Colorado. The source of the Glenwood Hot Springs’s mineral water is the Yampah spring. The spring produces over 3.5 million gallons of water per day at a scolding 122F.',
      lat: 39.544079,
      lng: -107.324821,
      state_id: @colorado.id
      })

    colorado_fact_2 = Fact.create({
      title: 'Colorado has the world’s largest flat-top mountain.',
      details: 'The Grand Mesa is known as the largest flattop mountain in the world. Spanning hundreds of square miles and standing more than 10,000 feet above sea level, the Grand Mesa is home to various wildlife, distinct geologic features, national forest, and beautiful views. The Grand Mesa, which Is located close to Grand Junction, has a total area of around 500 square miles, reaching as far as both the Colorado and Gunnison rivers. Most of the mesa itself is located within the Grand Mesa National Forest, which is inhabited by many species of animal.',
      lat: 38.920980,
      lng: -104.713220,
      state_id: @colorado.id
      })

    visit root_path
    # save_and_open_page

    within('#state-name') do
      expect(page).to have_content('Colorado')
    end

    within('#state-description') do
      expect(page).to have_content('Colorado, a western U.S. state, has a diverse landscape of arid desert, river canyons and snow-covered Rocky Mountains, which are partly protected by Rocky Mountain National Park. Elsewhere, Mesa Verde National Park features Ancestral Puebloan cliff dwellings. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area. - Google')
    end

    # within('#state-flag_image') do
    #   expect(page).to have_content('/assets/images/colorado_map.png')
    # end

    within('#state-captitol_name') do
      expect(page).to have_content('Denver')
    end

    within('#state-population') do
      expect(page).to have_content(5773714)
    end
  end
end
