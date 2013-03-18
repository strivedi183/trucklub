require 'spec_helper'

describe 'Session' do
  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login to LunchyPunchy')
    end
  end

  describe 'GET /login' do
    it 'displays the login form' do
      visit root_path
      click_link('Login to LunchyPunchy')
      page.should have_link('Cancel')
      page.should have_button('Get Truckin')
    end
  end

  describe 'POST /login' do
    let(:user) {User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')}

    it 'logs the user into the system if credentials are correct' do
      visit root_path
      click_link('Login to LunchyPunchy')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'a')
      click_button('Get Truckin')
      page.should_not have_button('Get Truckin')
      # expect(page.has_link?('bob')).to be true
      # page.should_not have_link('Register')
      # page.should_not have_link('Login')
      # visit root_path
      # page.should_not have_link('Login to LunchyPunchy')
      # page.should_not have_link('Register')
    end
  end
end