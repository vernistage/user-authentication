require 'rails_helper'

describe Job do
  let(:job) { Job.create!({
    name: "developer",
    description: "writing code",
    status: 0,
    employment_type: 0
    }) }

  describe "job attributes" do
    it "job has a name" do
      expect(job.name).to eq "developer"
    end

    it "job has a description" do
      expect(job.description).to eq "writing code"
    end

    it "job has a status" do
      expect(job.status).to eq 0
    end

    it "job has an employement type" do
      expect(job.employment_type).to eq 0
    end
  end

  # Need to write tests for status and employment type classification
end
