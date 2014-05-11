class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@student\.unimelb\.edu\.au\z/,
                  message: "must be a '@student.unimelb.edu.au' address" }

  def full_name
	"#{first_name} #{last_name}"
  end
  
end
