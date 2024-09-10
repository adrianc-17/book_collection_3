# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'AddBookIntegrationTests', type: :feature do
   scenario 'valid inputs' do
     visit new_book_path
     fill_in 'Title', with: 'Annihilation'
     fill_in 'Author', with: 'Jeff VanderMeer'
     fill_in 'Price', with: 15.99
     # fill_in 'Published date', with: '2014-02-04'
     select '2014' :from => 'book_published_date_1i'
     select '2' :from =>  'book_published_date_2i'
     select '4' :from => 'book_published_date_3i' 
     click_on 'Create Book'
     visit books_path
     expect(page).to have_content('Annihilation')
     expect(page).to have_conent('Jeff VanderMeer')
     expect(page).to have_content('15.99')
     expect(page).to have_content('2014-02-04')
  end
end
