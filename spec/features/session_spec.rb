require 'spec_helper'

describe 'Session' do
  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login to trucKlub')
    end
  end

  describe 'GET /login' do
    it 'displays the login form' do
      visit root_path
      click_link('Login to trucKlub')
      page.should have_button('Cancel')
      page.should have_button('Get Truckin')
    end
  end
end