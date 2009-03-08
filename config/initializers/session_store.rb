# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_receive_mail_session',
  :secret      => '2f7aec36b20c430aeb6ec82a47c31b0d1fb277257f783bd1f2a322cb6a857de922369da581e02bea23b7357077a47a11edf4835648eea8303d02f4f44e786473'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
