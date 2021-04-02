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

  it "is not valid without a phone of contact" do
    subject.phone = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name of a project" do
    subject.project_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description of a project" do
    subject.project_description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description of the department in charge of the elevators" do
    subject.department_in_charge_of_elevators = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a message" do
    subject.message = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a file name or topic" do
    subject.file_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a customer ID" do
    subject.customer_id = nil
    expect(subject).to_not be_valid
  end
end

