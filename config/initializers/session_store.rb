# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_compare_standards_session',
  :secret      => '0c580075cf9deda7eab3c017f4245827a3128df0f07bb84b85adf1d757663b031b4be402df1eb9b03e4dae29086505bfa2def68891b40676700cb0a7380295d4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
