RSpec.describe Special do
  describe 'validations' do
    describe 'required fields' do
      it 'should be invalid if missing a name' do
        special = Special.create(comedian_id: 1)

        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a comedian id' do
        special = Special.create(name: 'Cedric The Entertainer')

        expect(special).to_not be_valid
      end
    end
  end
end
