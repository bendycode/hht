# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mari_session',
  :secret      => 'ad7a40a687a6b04a2540343646ec1c34fd442eb5e20a1f97f385847ea60088e490743370366d45a49156250316a9cb2b6f4a2c0e6949e2ecf1cd8c6bed4e0beb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
