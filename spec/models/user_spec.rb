require 'rails_helper'

describe User, type: :model  do

  describe "model relation" do
    let(:user) { FactoryGirl.create :user }

    it { expect(user).to have_and_belong_to_many :roles }
    it { expect(user).to have_many :addresses }
    it { expect(user).to have_many :providers }
  end

  describe 'db table has' do
    let(:user) { FactoryGirl.create :user }

    context 'columns' do
      it { expect(user).to have_db_column(:email).of_type(:string).with_options(default: "", null: false) }
      it { expect(user).to have_db_column(:encrypted_password).of_type(:string).with_options(default: "", null: false) }
      it { expect(user).to have_db_column(:first_name).of_type(:string) }
      it { expect(user).to have_db_column(:last_name).of_type(:string) }
      it { expect(user).to have_db_column(:date_of_birth).of_type(:date) }
      it { expect(user).to have_db_column(:gender).of_type(:string).with_options(limit: 10) }  
    end

    context 'indexes' do
      it { expect(user).to have_db_index(:email).unique(:true) }
      it { expect(user).to have_db_index(:reset_password_token).unique(:true) }
    end
  end


  describe 'model callback' do
    describe 'after create' do
      let(:user) { FactoryGirl.create :user }

      context '#set_default_role' do
        it { expect(user).to callback(:set_default_role).after(:create) }

        it 'should set one default role to user' do
          expect(user.roles.count).to eq 1
        end
      end
    end
  end

end
