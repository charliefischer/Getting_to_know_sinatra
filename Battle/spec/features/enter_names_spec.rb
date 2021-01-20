# feature 'Testing infastructure' do
#
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
#
# end

feature 'testing naming players' do
  scenario 'It allows players to submit their names in a from and see them on the screen' do
    visit('/')
    fill_in(:player_1_name, with: 'Glykeria')
    fill_in(:player_2_name, with: 'Oscar')
    click_button('Submit')
    expect(page).to have_content 'Glykeria vs. Oscar'
  end
end
