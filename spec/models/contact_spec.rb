require 'rails_helper'

describe Contact do
  # it { expect have_many :phones }
  it "should have many phones" do
    phone = Phone.new
    contact = Contact.new
    contact.phones << phone
    expect(contact.phones.first).to eq phone
  end
end
