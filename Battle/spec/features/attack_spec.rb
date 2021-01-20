feature 'testing attacking the other player' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Glykeria attacked Oscar'
  end
end
