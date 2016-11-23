RSpec.feature "Battle" do

   scenario "User fills out name in form" do
     visit('/')
     fill_in :player_1, with: "John"
     fill_in :player_2, with: "Tom"
     click_button 'Submit'
     expect(page).to have_content("John vs. Tom")
   end

   scenario "User can see their hit points" do
     visit('/')
     fill_in :player_1, with: "John"
     fill_in :player_2, with: "Tom"
     click_button 'Submit'
     expect(page).to have_content( "Tom: 60HP" )
   end

end
