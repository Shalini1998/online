module ApplicationHelper

  def developers
    User.where(role: "developer").count
  end

  def trainees
    User.where(role: "trainee").count
  end

  def admins
    User.where(role: "admin").count
  end

end
