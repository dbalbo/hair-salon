require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new stylist', {:type => :feature}) do
	it('allows a user to click on a stylist and see the clients for them') do
		visit('/')
		click_link('Add a New Stylist')
		fill_in("name", :with => "Kathy")
		click_button("Add Stylist")
		expect(page).to have_content("Success!")
	end
end

describe('viewing all of the stylists', {:type => :feature}) do
	it('allows a user to see all of the stylists in the salon') do
		stylist = Stylist.new({:name => "Kathy"})
		stylist.save()
		visit('/')
		click_button("View All Stylists")
		expect(page).to have_content(stylist.name)
	end
end

describe('seeing details for a single stylist', {:type => :feature}) do
  it('allows a user to click a stylist to see the clients and details for it') do
    test_stylist = Stylist.new({:name => 'Kathy'})
    test_stylist.save()
    test_client = Client.new({:name => "Brenda", :stylist_id => test_stylist.id()})
    test_client.save()
    visit('/stylists')
    click_link(test_stylist.name())
    expect(page).to have_content(test_client.name())
  end
end

describe('adding clients to a stylist', {:type => :feature}) do
  it('allows a user to add a client to a stylist') do
    test_stylist = Styist.new({:name => 'Brenda'})
    test_stylist.save()
    visit("/stylists/#{test_stylist.id()}")
    fill_in("Name", {:with => "Kathy"})
    click_button("Add Client")
    expect(page).to have_content("Success!")
  end
end

