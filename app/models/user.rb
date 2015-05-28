class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # Sends an email after a new user is created
  after_create :send_notification

  def send_notification
    AdminMailer.new_user(self).deliver
  end
end
