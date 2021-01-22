feature 'Attacking' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Glykeria attacked Oscar'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Oscar : 90HP'
  end

  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Glykeria's turn"
  end
      
  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "Glykeria's turn"
    expect(page).to have_content "Oscar's turn"
  end
  
end



