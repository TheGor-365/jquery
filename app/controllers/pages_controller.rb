class PagesController < ApplicationController
  def home
    @pages = 'home'
  end

  def about
    @pages = 'about'
  end

  def contacts
    @pages = 'contacts'
  end
end
