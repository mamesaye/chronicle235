# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chronicle235_session',
  :secret      => '5daf8cd9c045fe128a4414bb6f1876f2afdf92f19e8a23917e960fb1894837fb1966ed75e023af7200f4ff1a5ab181026eebebb88bf89c26e767741c9eeac152'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
