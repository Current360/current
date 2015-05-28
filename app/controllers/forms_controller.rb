class FormsController < ApplicationController
    def newsletter
        @new_sign_up = params[:newsletter]
        if @new_sign_up.valid?
            AdminMailer.newsletter(@new_sign_up).deliver
            redirect_to root_path, :flash => { :notice => "You have signed up successfully!" }
        else
            redirect_to root_path, :flash => { :alert => "Your input has errors. Please try again." }
        end
    end

    def contact_form
        @contact = ContactForm.new
        @contact.name = params[:name]
        @contact.email = params[:email]
        @contact.message = params[:message]
        @contact.reason = params[:reason]
        @contact.newsletter = params[:newsletter]

        if @contact.valid?
            AdminMailer.contact_form(@contact).deliver
            redirect_to root_path, :flash => { :notice => "Your message was submitted successfully!" }
        else
            redirect_to contact_path, :flash => { :alert => "Your input has errors. Name, Email, Message, and your reason for contact are required. Please try again."}
        end
    end

    def job_form
        @job = JobForm.new
        @job.first_name = params[:first_name]
        @job.last_name = params[:last_name]
        @job.email = params[:email]
        @job.phone = params[:phone]
        @job.message = params[:message]

        if @job.valid?
            AdminMailer.job_form(@job).deliver
            redirect_to root_path, :flash => { :notice => "Your message was submitted successfully!" }
        else
            redirect_to careers_path, :flash => { :alert => "Your input has errors. All fields are required. Please try again."}
        end
    end
end
