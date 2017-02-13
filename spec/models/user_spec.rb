require 'rails_helper'

describe User do
  let(:user) { User.create!({
    first_name: "First",
    last_name: "Last",
    email: "user@user.com",
    password: "password",
    }) }

  describe "user attributes" do
    it "user has a first name" do
      expect(user.first_name).to eq "First"
    end

    it "user has a last name" do
      expect(user.last_name).to eq "Last"
    end

    it "user has an email" do
      expect(user.email).to eq "user@user.com"
    end

    it "user has a hashed password per Devise" do
      expect(user.encrypted_password).not_to eq ""
    end
  end

end
