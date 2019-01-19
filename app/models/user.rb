class User < ApplicationRecord
  before_validation :ensure_session_token

  validates :session_token, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: { message: "can't be blank"}
  validates :password, length: { minimum: 6, allow_nil: true }

  # has_many :playlists

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)

    return user if user && user.is_password?(password)
  end

  def password=(password)
    @password = password

    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!

    return self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end
end
