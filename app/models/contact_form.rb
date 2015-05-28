class ContactForm
    include ActiveModel::Model
    include ActiveModel::Validations

    attr_accessor :name, :email, :message, :reason, :newsletter

    validates :name, presence: true
    validates :email, presence: true
    validates :message, presence: true
    validates :reason, presence: true
end