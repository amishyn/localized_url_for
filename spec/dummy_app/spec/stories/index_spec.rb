require 'spec_helper'

describe "GET 'index'", :type => :request do
  it "should have localized url" do
    visit '/'
    page.find(".index")[:href].should == '/en'
  end

  context 'uk locale' do
    before do
      visit '/uk'
    end
    
    it "should have link to uk" do
      I18n.locale.should == :uk
    end

    it "should set locale to uk" do
      page.find(".index")[:href].should == '/uk'
    end
  end
end
