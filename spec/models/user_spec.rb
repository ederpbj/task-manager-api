require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  #it { expect(user).to respond_to(:email) }

#Melhor modo de fazer
#Xudametch
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_confirmation_of(:password) }
  it { is_expected.to allow_value("ederpbj@gmail.com").for(:email) }

  #it { is_expected.to validate_numericality_of(:age)}


  # context 'when name is blank' do
  # 	before { user.name = " "}

  # 	it { expect(user).not_to be_valid }
  # end

  # context 'when name is nil' do
  # 	before { user.name = " "}

  # 	it { expect(user).not_to be_valid }
  # end



  #pending "add some examples to (or delete) #{__FILE__}"



  # before {@user = FactoryGirl.build(:user)}

  # it{expect(@user).to respond_to(:email)}
  # it{expect(@user).to respond_to(:name)}
  # it{expect(@user).to respond_to(:password)}
  # it{expect(@user).to respond_to(:password_confirmation)}
  # it{expect(@user).to be_valid}
  #testando
  #Usando subject
  #subject {build(:user)}
  #subject = User.new
  #it{expect(subject).to respond_to(:email)}
  #it{expect(subject).to be_valid}

  #outro modo
  #it{is_expected.to respond_to(:email)}  
  #it{is_expected.to respond_to(:name)}  
end
