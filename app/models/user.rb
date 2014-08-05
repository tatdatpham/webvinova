class User < ActiveRecord::Base
	has_many :posts
	has_many :votes
	has_many :connects
	has_many :shares

	validates :fullname, presence: true, length: {minimum: 5}
	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, presence: true, length: {minimum: 3}, confirmation: :true
	validates :birthday, presence: true
	validates :phone, presence: true
	
	def status_text()
		if status == -1
			return 'Banned'
		elsif status == 0
			return 'Member'
		else
			return 'Admin'
		end
	end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.fullname = auth.info.name
      user.email = auth.info.email
      user.password = Digest::MD5.hexdigest('password')
      user.birthday = '01/01/2000'
      user.phone = '12345'
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!

    end
  end
end
