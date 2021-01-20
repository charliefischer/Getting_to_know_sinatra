def sign_in_and_play
  visit('/')
  fill_in(:player_1_name, with: 'Glykeria')
  fill_in(:player_2_name, with: 'Oscar')
  click_button('Submit')
end