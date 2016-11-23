RSpec.feature "Fill in form with name" do

   scenario "User fills out name in form" do
     visit('/')
     fill_in :player_1, with: "John"
     fill_in :player_2, with: "Tom"
     click_button 'Submit'
     expect(page).to have_content("John vs. Tom")
   end

end
