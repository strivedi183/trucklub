require 'spec_helper'

describe 'Welcome' do
  describe 'GET /' do
    it 'displays login to LunchyPunchy link' do
      visit root_path
      page.should have_link('Login to LunchyPunchy')
    end
    it 'displays register for LunchyPunchy link' do
      visit root_path
      page.should have_link('Register')
    end
    it 'displays Welcome text' do
      visit root_path
      page.should have_text('LunchyPunchy')
    end
  end
end