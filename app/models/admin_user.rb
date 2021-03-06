class AdminUser < ActiveRecord::Base
  ### Active Admin Built-in table
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  ### Relation
  has_many :study_owners
  has_many :studies, through: :study_owners

  has_many :organizations, through: :organization_owners
  has_many :organization_owners

  has_many :users, through: :studies
  has_many :users, through: :studies
  has_many :surveys, through: :studies
  has_many :data_streams, through: :studies

  accepts_nested_attributes_for :studies

  validates :email, presence: true

  ### For sending email function
  after_create {|admin| admin.send_reset_password_instructions unless admin.email == 'admin@example.com' || !admin.send_email}

  ### For not requiring passwords for new admin user
  def password_required?
    new_record? ? false : super
  end
end
