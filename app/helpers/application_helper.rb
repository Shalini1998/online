module ApplicationHelper

  def developers
    User.where(role: "developer").count
  end

  def trainees
    User.where(role: "trainee").count
  end

  def students
    User.where(role: "student").count
  end

end
