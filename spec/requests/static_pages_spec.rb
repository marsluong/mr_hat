require 'spec_helper'

describe "StaticPages" do
  
  subject {page}
 
  describe "Login/Home page" do
  	before {visit root_path}

	it { should have_content('Login') }
	it { should have_title('Login') }
  end
 
  describe "Sign Up" do
	before {visit signup_path}

  	it { should have_content('Sign Up') }
	it { should have_title('Sign Up') }
  end

  describe "Mr. Hat" do
  	before {visit hat_path}

	it { should have_content('Mr. Hat') }
	it { should have_title('Mr. Hat') }
  end

  describe "Statistics" do
	before {visit statistics_path}

	it { should have_content('Statistics') }
	it { should have_title('Statistics') }
  end
  
  describe "Settings" do
	before {visit settings_path}

	it { should have_content('Settings') }
	it { should have_title('Settings') }
  end

end
