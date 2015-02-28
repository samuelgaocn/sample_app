require 'spec_helper'

describe "Static pages" do
  describe "Help page" do
    it "should have the content 'Help'" do
      visit  '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails | help")
    end
 end

  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
	#get static_pages_index_path
      expect(page).to have_content('Sample App')
	#response.status.should be(200)
    end
	it "should have the title 'home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails | home")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
	it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails | About Us")
    end
	
  end
end
