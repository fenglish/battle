
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

   scenario "User gets confirmation of attack" do
     sign_in_and_play
     click_button 'ATTACK!'
     expect(page).to have_content( "John has attacked Tom!" )
   end

  scenario "should show who's turn it is" do
    sign_in_and_play
    expect(page).to have_content( "It is John's turn" )       
  end

end
