require 'spec_helper'

describe "StaticPages" do
 
  describe "Login/Home page" do

	it "should have the content 'Login" do
    	visit root_path
		expect(page).to have_content('Login')
	end
  end

  describe "Sign Up" do

  	it "should have the content 'Sign Up'" do
		visit signup_path
		expect(page).to have_content('Sign Up')
	end
  end

  describe "Mr. Hat" do
  	
	it "should have the content 'Mr. Hat'" do
		visit hat_path
		expect(page).to have_content('Mr. Hat')
	end
  end

  describe "Statistics" do

	it "should have the content 'Statistics'" do
		visit statistics_path
		expect(page).to have_content('Statistics')
	end
  end

  describe "Settings" do

  	it "should have the content 'Settings'" do
		visit settings_path
		expect(page).to have_content('Settings')
	end
  end

end
