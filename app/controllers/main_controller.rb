class MainController < ApplicationController
  def example
    render "example.html.erb" #.html_safe
  end
end
