require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('cost_to_ship path', {:type => :feature}) do
  it('shows a page with inputs for length, height, width, distance, and shipping speed, and a submit button. On submit, shows a page with expected shipping costs.') do
  visit('/')
  fill_in('length', :with => '4')
  fill_in('height', :with => '2')
  fill_in('width', :with => '1')
  fill_in('weight', :with => '2')
  fill_in('distance', :with => '200')
  select 'Standard', from: "speed"
  click_button('Calculate!')
  expect(page).to have_content("$32.00")
  end
end
