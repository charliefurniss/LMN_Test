class EmailsController < ApplicationController
  def index

  	@emails = Email.all

  	@emails_opened = (@emails.where(:Event => "open") | @emails.where(:Event => "click")).count

  	@emails_clicked = @emails.where(:Event => "click").count

  	user_confirmation = @emails.where(:EmailType => "UserConfirmation")

  	@user_confirmation_click_rate = (user_confirmation.where(:Event => "click").count * 100)

  end
end
