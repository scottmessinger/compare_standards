class User < TwitterAuth::GenericUser
  # Extend and define your user model as you see fit.
  # All of the authentication logic is handled by the 
  # parent TwitterAuth::GenericUser class.
  
  def admin
    admins = ['scottmessinger', 'andyhlavka']
    admins.include?(self.login)
  end
end
