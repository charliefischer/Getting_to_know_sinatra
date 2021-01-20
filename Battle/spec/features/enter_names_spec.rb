# feature 'Testing infastructure' do

#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end

# end

feature 'testing naming players' do
  scenario 'It allows players to submit their names in a from and see them on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Glykeria vs. Oscar'
  end
end

feature 'testing hit points' do
  scenario 'it allows the players to see the opponents hit points' do
    sign_in_and_play
    expect(page).to have_content 'Oscar: 100HP'
  end
end
