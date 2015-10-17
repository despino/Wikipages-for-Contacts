require 'rails_helper'

describe Phone do
  # it { expect validate_presence_of :number }
  # it { expect belong_to :contact }
  it "should belong_to a contact" do
    # First,
    # then,
    # and assigning ...

    # declaring a variable called aPhone then
    # calling a method called new on the Phone class and returning a new phone object
    # assign means to =
    aPhone = Phone.new()
    aContact = Contact.new()
    aPhone.contact() = aContact
    expect(aPhone.contact).to eq aContact
  end
end
