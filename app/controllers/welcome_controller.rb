class WelcomeController < ApplicationController
  skip_authorization_check

  def admins_dashboard
    render layout: 'admin'
  end

  def tasks_dashboard
    @tasks = Task.all
    render layout: 'admin'
  end

end
