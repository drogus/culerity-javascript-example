# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_culerity-example_session',
  :secret      => '4c180bbc30425dd1b087db9e245a4d9b4c05021061935f7726dc684c72233c40e3d9a440d3c8edee898197118db524640387dd978df2863e2dfa1a9f10fd5502'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
