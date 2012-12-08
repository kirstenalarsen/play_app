require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Play App | Home")
    end
    it "should have the content 'Play App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h2', :text => 'Play App')
    end
  end
  
  describe "Help page" do
     it "should have the right title" do
       visit '/static_pages/help'
       page.should have_selector('title',
                         :text => "Play App | Help")
     end
     it "should have the content 'Help Me'" do
       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
       visit '/static_pages/help'
       page.should have_content('Help Me')
     end
   end
   
   describe "Maps page" do
      it "should have the right title" do
         visit '/static_pages/map'
         page.should have_selector('title',
                           :text => "Play App | Maps")
       end
       it "should have the content 'Maps'" do
        # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        visit '/static_pages/map'
        page.should have_content('Map')
      end
    end
    
    describe "Graphs page" do
       it "should have the right title" do
          visit '/static_pages/graph'
          page.should have_selector('title',
                            :text => "Play App | Graph")
        end
        it "should have the content 'Graph'" do
         # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
         visit '/static_pages/graph'
         page.should have_content('Graph')
       end
     end
     
       describe "About page" do
            it "should have the right title" do
                visit '/static_pages/about'
                page.should have_selector('title',
                                  :text => "Play App | About")
              end
              it "should have the content 'About Us'" do
            # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
            visit '/static_pages/about'
            page.should have_content('About Us')
          end
        end
end
