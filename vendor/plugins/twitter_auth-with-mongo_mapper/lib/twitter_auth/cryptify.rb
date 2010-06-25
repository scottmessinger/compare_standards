module TwitterAuth
  module Cryptify
    class Error < StandardError; end
    
    def self.encrypt(data)
      salt = generate_salt
      key = EzCrypto::Key.with_password(TwitterAuth.encryption_key, salt)
      {:encrypted_data => key.encrypt64(data), :salt => salt}
    end
 
    def self.decrypt(encrypted_data_or_hash, salt=nil)
      case encrypted_data_or_hash
      when String
        encrypted_data = encrypted_data_or_hash
        raise ArgumentError, 'Must provide a salt to decrypt.' unless salt
      when Hash
        encrypted_data = encrypted_data_or_hash[:encrypted_data]
        salt = encrypted_data_or_hash[:salt]
      else
        raise ArgumentError, 'Must provide either an encrypted hash result or encrypted string and salt.'
      end
      key = EzCrypto::Key.with_password(TwitterAuth.encryption_key, salt)
      key.decrypt64(encrypted_data)
    end
  
    def self.generate_salt
      ActiveSupport::SecureRandom.hex(4)
    end
  end
end

