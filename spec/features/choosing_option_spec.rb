
xfeature 'user can choose rock, paper or scissors' do
  scenario 'user select rock option' do
    sign_in_and_play
    choose('rock')
  end
end
