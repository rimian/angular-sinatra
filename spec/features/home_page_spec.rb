
feature 'home page yo' do
  before do
    app = Sinatra.new
    Capybara.app = App.new(app)
  end

  scenario 'Visit home page and something is there' do
    visit '/'
    expect(page).to have_content 'Angular Sinatra'
  end
end