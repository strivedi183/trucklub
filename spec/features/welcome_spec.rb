require 'spec_helper'

describe 'Welcome' do
  describe 'GET /' do
    it 'displays login to trucKlub link' do
      visit root_path
      page.should have_link('Login to trucKlub')
    end
    it 'displays register for trucKlub link' do
      visit root_path
      page.should have_link('Register')
    end
  end
end