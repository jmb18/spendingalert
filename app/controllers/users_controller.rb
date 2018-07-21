class UsersController < ApplicationController
  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash.notice = "Got it. We've updated your preferences."
      redirect_to dashboard_path
    else
      flash.notice = @user.errors.full_messages.join(". ")
      redirect_to dashboard_path
    end
  end

	private

  def user_params
    params.require(:user).permit(
      :user_budget,
      :notificationInterval,
      :notificationType,
      :notificationPercent
    )
  end
end
