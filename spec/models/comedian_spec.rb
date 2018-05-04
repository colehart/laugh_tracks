RSpec.describe Comedian do
  describe 'validations' do
    describe 'required fields' do
      it 'should be invalid if missing a name' do
        comedian = Comedian.create(age: 20)

        expect(comedian).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comedian = Comedian.create(name: 'Cedric The Entertainer')

        expect(comedian).to_not be_valid
      end
    end
  end
end
