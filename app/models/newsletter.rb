class Newsletter
    include ActiveModel::Model
    include ActiveModel::Validations

    attr_accessor :newsletter

    validates :newsletter, presence: true
end