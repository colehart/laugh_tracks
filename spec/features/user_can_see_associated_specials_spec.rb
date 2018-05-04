RSpec.describe 'Visitors' do
  it 'should show users all comedians specials' do
    comedian_name = 'Bill Murray'
    comedian = Comedian.create(name: comedian_name, age: 20)

    special = Special.create(name: 'Another Funny White Guy', comedian_id: 1)

    visit('/comedians')

    expect(page).to have_content(comedian_name)
    expect(page).to have_content(comedian.age)
    expect(page).to have_content(special.name)
  end
end
