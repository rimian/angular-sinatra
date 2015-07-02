
feature 'home page yo' do
  scenario 'Visit the page and something from the API is on the page' do

    app = Sinatra.new do
      get '/api' do
        'Some text from the API'
      end
    end
    Capybara.app = App.new(app)

    visit '/'
    expect(page).to have_content 'Angular Sinatra'
    expect(page).to have_content 'Some text from the API'
  end

  scenario 'Visit the page and something from the API is on the page' do

    app = Sinatra.new do
      get '/api' do
        'Something different yo'
      end
    end
    Capybara.app = App.new(app)

    visit '/'
    expect(page).to have_content 'Angular Sinatra'
    expect(page).to have_content 'Something different yo'
  end
end
