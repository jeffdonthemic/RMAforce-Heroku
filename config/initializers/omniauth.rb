require 'forcedotcom'

# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
OmniAuth.config.full_host = 'https://localhost:3000'
# OmniAuth.config.full_host = 'https://telesales-rails.heroku.com'

module OmniAuth
  module Strategies
    #tell omniauth to load our strategy
    autoload :Forcedotcom, 'lib/forcedotcom'
  end
end

# created a new remote access for heroku
Rails.application.config.middleware.use OmniAuth::Builder do
  # Telesales App - Heroku
  # provider :forcedotcom, '3MVG9VmVOCGHKYBSMFoH607T0CtHEK8.Hytco3Z.oY45u4n8Pkk81aJMqBvPih1aPnnUMU82mXpHL_mYriYAh', '4084422413897598678'
  # Telesales Rails - Local
  provider :forcedotcom, '3MVG9y6x0357Hlef5Po4snvt4OuD1R8J96jW4bab4.bQ2PGVG6DrD5.oPouotqVTMHDWxwH1.dtGVajMfWqL.', '6178009554364976379'
end