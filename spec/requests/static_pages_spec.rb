require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    before { visit root_path } 
    subject { page }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '|Home' ) }
    end
  
  describe "Help page" do
    before { visit help_path }
    subject { page }
    it { should have_selector('title', text: full_title('Help')) }
    it { should have_content ('Help Me') }
    end

   
   describe "Maps page" do
    before { visit map_path } 
    subject { page }
    it { should have_selector('title', text: full_title('Maps')) }
    it { should have_content ('Map') }
    end
     
  describe "About page" do
    before { visit about_path } 
    subject { page }
    it { should have_selector('title', text: full_title('About')) }
    it { should have_content ('About') }
    end
     
  describe "Contact page" do
    before { visit contact_path } 
    subject { page }
    it { should have_selector('title', text: full_title('Contact')) }
    it { should have_content ('Contact') }
    end
         
end
