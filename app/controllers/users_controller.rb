class UsersController < ApplicationController
  def update
		@user = current_user
    @user.update(user_params)
    if @user.save
      flash.notice = "Budget saved successfully"
      redirect_to dashboard_path
    else
      flash.notice = @user.errors.full_messages.join(". ")
      render dashboard_path
    end
  end

  def create
  end

  def destroy
  end

	private

  def user_params
    params.require(:user).permit(
      :user_budget
    )
  end
end
