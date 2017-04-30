class User < ApplicationRecord
	has_many :staffs
	  # Include default devise modules. Others available are:
	  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable,
	  devise :database_authenticatable, :timeoutable,
	         :recoverable, :rememberable, :trackable, :validatable

		ROLES = %w[super_administrator administrator clerk teacher student guardian].freeze

	 EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i
	 validates_uniqueness_of :email
	 validates_presence_of :email
	 validates_format_of :email, with: EMAIL_REGEX
end
