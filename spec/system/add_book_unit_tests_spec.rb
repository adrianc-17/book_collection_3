require 'rails_helper'

RSpec.describe "AddBookUnitTests", :type => :model do
  
  it "has a value" do
    book = Book.new(title: "anything")
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    book = Book.new(title: nil)
    expect(book).to_not be_valid
  end
end
