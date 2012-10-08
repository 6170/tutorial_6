class SessionsController < ApplicationController
  def login
      session[:logged_in] = true
      redirect_to welcomepage_path
  end

  def logout
      session[:logged_in] = false
      redirect_to frontpage_path
  end
end
