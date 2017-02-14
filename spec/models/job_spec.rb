require 'rails_helper'

describe Job do
  let(:developer) { Job.create!({
    name: "developer",
    description: "writing code",
    status: 0,
    employment_type: 0
    }) }

  let(:engineer) { Job.create!({
    name: "engineer",
    description: "shipping code",
    status: 1,
    employment_type: 1
    }) }

  describe "job attributes" do
    it "job has a name" do
      expect(developer.name).to eq "developer"
    end

    it "job has a description" do
      expect(developer.description).to eq "writing code"
    end

    it "job has a status" do
      expect(developer.status).to eq "active"
    end

    it "job has a status" do
      expect(engineer.status).to eq "inactive"
    end

    it "job has an employement type" do
      expect(developer.employment_type).to eq "full_time"
    end

    it "job has an employement type" do
      expect(engineer.employment_type).to eq "part_time"
    end
  end

end
