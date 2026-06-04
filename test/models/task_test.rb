# frozen_string_literal: true

require "test_helper"

class TaskTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
      name: "Sam Smith",
      email: "sam@example.com",
      password: "welcome",
      password_confirmation: "welcome")
  end

  def test_slug_generation
    task1 = Task.create!(title: "fishing", assigned_user: @user, task_owner: @user)
    task2 = Task.create!(title: "fish", assigned_user: @user, task_owner: @user)
    assert_equal task1.slug, "fishing"
    assert_equal task2.slug, "fish"
  end
end
