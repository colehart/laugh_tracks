RSpec.describe 'Visitors' do
  context 'when i visit /comedians' do
    it 'should show me all comedians and their age' do
      comedian1_name = 'Bill Murray'
      comedian1 = Comedian.create(name: comedian1_name, age: 20)
      comedian2_name = 'Will Ferrel'
      comedian2 = Comedian.create(name: comedian2_name, age: 33)

      visit '/comedians'

      expect(page).to have_content(comedian1.name)
      expect(page).to have_content(comedian1.age)
      expect(page).to have_content(comedian2.name)
      expect(page).to have_content(comedian2.age)
    end

    it 'should show me all specials for a comedian' do
      comedian1 = Comedian.create(name: 'Bill Murray', age: 20)
      comedian2 = Comedian.create(name: 'Will Ferrel', age: 33)

      special1_name = 'Another Funny White Guy'
      special1 = Special.create(name: special1_name, comedian_id: 1)
      special2_name = 'Dubya, Back Again with a Paintbrush'
      special2 = Special.create(name: special2_name, comedian_id: 2)

      visit '/comedians'

      expect(page).to have_content(special1.name)
      expect(page).to have_content(special2.name)
    end

    it 'should show me the average age of all comics' do
      ages = [35, 40]
      comedian1 = Comedian.create(name: 'Bill Murray', age: ages[0])
      comedian2 = Comedian.create(name: 'Will Ferrel', age: ages[1])
      avg = ages.sum.to_f / ages.length

      visit '/comedians'

      within('#average') do
        expect(page).to have_content("Average age: #{avg}")
      end
    end

    it 'should show a count of specials' do
      comedian1 = Comedian.create(name: 'Bill Murray', age: 35)
      comedian2 = Comedian.create(name: 'Will Ferrel', age: 40)
      special1_name = 'Another Funny White Guy'
      special1 = Special.create(name: special1_name, comedian_id: 1)

      visit '/comedians'

      within('#comedian_1') do
        expect(page).to have_content("Number of Specials: #{comedian1.specials.count}")
      end
      within('#comedian_2') do
        expect(page).to have_content("Number of Specials: #{comedian2.specials.count}")
      end
    end
  end
end
