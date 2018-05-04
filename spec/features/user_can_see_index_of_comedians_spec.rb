RSpec.describe 'Visitors' do
  it 'should show users all comedians' do
    comedian_name = 'Bill Murray'
    comedian = Comedian.create(name: comedian_name, age: 20)

    visit('/comedians')

    expect(page).to have_content(comedian_name)
    expect(page).to have_content(comedian.age)
  end
end
