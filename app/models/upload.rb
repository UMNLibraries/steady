class Upload

#  extend ActiveModel::Naming 
  include ActiveModel::AttributeMethods
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :organization, :csv
  
  validates_presence_of :name, :csv
  validates :email, :presence => true, :email_format => true

  def initialize(attributes = {})
    attributes.each do |name, value|
      instance_variable_set "@#{name}", value
    end
  end

  def persisted?
    false
  end
  
end
