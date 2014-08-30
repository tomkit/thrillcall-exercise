# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railsproj1_session',
  :secret      => 'b7d68efb3240332565362de2ecc7ad35613f0334fd0a389d9be9bd3d60f0f69bcac68119b93cef2b667a63c7b62ecfdeb4505ae5d6bcf69f40766d3829cb23b1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
