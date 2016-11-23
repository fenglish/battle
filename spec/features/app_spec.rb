require 'spec_helper'

RSpec.feature "Battle" do

   scenario "User fills out name in form" do
     visit('/')
     sign_in_and_play
     expect(page).to have_content("John vs. Tom")
   end

   scenario "User can see their hit points" do
     sign_in_and_play
     expect(page).to have_content( "Tom: 60HP" )
   end

end
