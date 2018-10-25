class User < ApplicationRecord
  before_save { self.email = self.email.downcase }

  VALID_IE_NUMBER_REGEX = /\A[0-9]{2}57+[0-9]{2}\z/
  validates :ie_number, presence: true,
                        format: { with: VALID_IE_NUMBER_REGEX }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true,
                       length: { minimum: 6 }

  VALID_GPA_REGEX = /\A[0-3]+\.+[0-9]{2}\z|\A[4]+\.+[0]{2}\z/
  validates :gpa, presence: true,
                  format: { with: VALID_GPA_REGEX }

  validates :lab, presence: true
                  
end
