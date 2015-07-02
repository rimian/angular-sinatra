
feature 'home page yo' do
  scenario 'Visit home page and something is there' do
    visit '/'
    expect(page).to have_content 'Angular Sinatra'
  end
end
