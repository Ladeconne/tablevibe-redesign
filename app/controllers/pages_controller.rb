class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :pricing, :how_it_works, :support ]

  def home
    @customers = Customer.all
  end

  def pricing
  end

  def how_it_works
  end

  def support
  end
end
