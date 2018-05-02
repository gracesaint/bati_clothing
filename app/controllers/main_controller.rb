class MainController < ApplicationController
  def home
    @products = Product.all
  end

  def contact
    @products = Product.all
  end

  def display
  end
end
