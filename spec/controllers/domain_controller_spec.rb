require 'spec_helper'

describe DomainController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'start'" do
    it "returns http success" do
      get 'start'
      response.should be_success
    end
  end

end
