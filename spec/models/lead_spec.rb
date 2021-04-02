require 'rails_helper'

RSpec.describe Lead, type: :model do
  subject {
    described_class.new(email: 'gh',
      company_name: 'gh',
      full_name_of_contact: "fhg")
  }

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a company name" do
    subject.company_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a full name of contact" do
    subject.full_name_of_contact = nil
    expect(subject).to_not be_valid
  end
end

