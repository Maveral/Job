require 'test_helper'

class JobsTest < ActionDispatch::IntegrationTest
  describe "Jobs tests" do

  describe "Home page" do

    it "should have the content 'Listing joboffers'" do
      visit '/joboffers/index'
      page.should have_content('Listing joboffers')
    end
  end
end
end