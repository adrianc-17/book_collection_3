require 'rails_helper'

RSpec.describe "AddBookIntegrationTests", type: :request do
  describe "GET /Books" do
    
    it "shows success notice" do
      book = Book.create(title: "Test Book")
      get books_path
      expect(flash[:notice]).to eq "Book successfully added!"
      expect(response.body).to include ("Test Book")
    end

  end
end
