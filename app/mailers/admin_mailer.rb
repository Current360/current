class AdminMailer < ActionMailer::Base
  default from: "no-reply@current360.com"
  default to: "current@current360.com"

  def mandrill_client
    @mandrill_client ||= Mandrill::API.new MANDRILL_API_KEY
  end

  # Sent via SMTP
  # def new_user(user)
  #   @user = user
  #   mail(subject: "New User at current360.com: #{user.email}")
  # end

  def new_user(user)
    template_name = "new-user"
    template_content = []
    message = {
        to: [
                {
                    email: "current@current360.com",
                    name: "Wizards"
                }
        ],
        subject: "New user: #{user.email}",
        merge_vars: [
            {
                rcpt: "current@current360.com",
                vars: [
                    { email: "USER_EMAIL", content: user.email }
                ]
            }
        ]
    }

    mandrill_client.messages.send_template template_name, template_content, message
  end

  def newsletter(newsletter)
    @new_sign_up = newsletter
    mail( :subject => "Newsletter signup from: #{@new_sign_up}")
  end

  def contact_form(contact_form)
    @contact = contact_form
    mail( :subject => "Contact from #{@contact.name} from current360.com")
  end

  def job_form(job_form)
    @job = job_form
    mail( :subject => "Employment inquiry from #{@job.first_name} #{@job.last_name}")
  end

end
