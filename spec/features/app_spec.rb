
RSpec.feature "Battle" do

   scenario "User fills out name in form" do
     visit('/')
     sign_in_and_play
     expect(page).to have_content("John vs. Tom")
   end

   scenario "Player2(Tom) can see their hit points" do
     sign_in_and_play
     expect(page).to have_content( "Tom: 60HP" )
   end

    scenario "Player1(John) can see their hit points" do
      sign_in_and_play
      expect(page).to have_content( "John: 60HP" )
    end

   scenario "Player1(John) gets confirmation of attack" do
     sign_in_and_play
     click_button 'ATTACK!'
     expect(page).to have_content( "John has attacked Tom!" )
   end

   scenario "Player2(Tom) gets confirmation of attack" do
     sign_in_and_play
     click_button 'ATTACK!'
     click_button 'ATTACK!'
     expect(page).to have_content( "Tom has attacked John!" )
   end

  scenario "should show who's turn it is" do
    sign_in_and_play
    expect(page).to have_content( "It is John's turn" )
  end

  scenario "A message is displayed when a player loses" do
    sign_in_and_play
    11.times { click_button 'ATTACK!' }
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    # click_button 'ATTACK!'
    expect(page).to have_content ("Tom has lost!")
  end

end
