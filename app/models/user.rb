class User < ActiveRecord::Base
	attr_accessible :dob, :email, :first_name, :last_name, :password, :profile_image, :username
	has_secure_password

	validates_presence_of :email, :username
	validates_presence_of :password, :on => :create


	validates_length_of :password, :minimum => 6, :on => :create

	validates_uniqueness_of :email, :username, :case_sensitive => false
	has_many :items, :dependent => :destroy, :foreign_key => :user_id

   # Validates if the username is 'admin', 'kyle', 'leo' regardless of case
   validate :is_unavailable_username?

      def is_unavailable_username?
      if :username == "admin" || 
         :username == "search" || 
         :username == "signup" ||
         :username == "settings" ||
         :username == "friends" ||
         :username == "sessions" ||
         :username == "login" ||
         :username == "users"
         errors.add(:username, "Username is unavailable. So sorry. I am sure you will be able to find a better one though.")
      end
   end

end

