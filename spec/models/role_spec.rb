require 'rails_helper'

describe Role, type: :model  do

  describe "model" do
    let(:role) { FactoryGirl.create :role }

    context "relations" do
      it { expect(role).to have_and_belong_to_many :users }
    end

    context "validations" do
      it { expect(role).to validate_uniqueness_of(:name) }
    end
  end

  describe 'db table has' do
    let(:role) { FactoryGirl.create :role }

    context 'columns' do
      it { expect(role).to have_db_column(:name).of_type(:string).with_options(limit: 50) }
      it { expect(role).to have_db_column(:priority).of_type(:integer) }
      it { expect(role).to have_db_column(:description).of_type(:string) }
      it { expect(role).to have_db_column(:active).of_type(:boolean) }
    end

    context 'indexes' do
      it { expect(role).to have_db_index(:name).unique(:true) }
    end
  end


  # describe 'model callback' do
  #   let(:role) { FactoryGirl.create :role }

  #   context 'after create' do
  #     it { expect(role).to callback(:set_default_role).after(:create) }
  #   end
  # end

  describe "methods" do
    describe ".default" do
      subject { Role.default }

      it 'should return role object' do
        expect(subject).to be_a(Role)
      end

      it 'should return guest role' do
        expect(subject.name).to eq('guest')
      end

      it 'should return active role' do
        expect(subject.active?).to be_truthy
      end
    end
  end

end