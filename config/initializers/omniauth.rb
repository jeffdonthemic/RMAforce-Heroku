require 'forcedotcom'

# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
# OmniAuth.config.full_host = 'https://localhost:3000'
OmniAuth.config.full_host = 'https://rmaforce.heroku.com'

module OmniAuth
  module Strategies
    #tell omniauth to load our strategy
    autoload :Forcedotcom, 'lib/forcedotcom'
  end
end

# created a new remote access for heroku
Rails.application.config.middleware.use OmniAuth::Builder do
  # heroku
  provider :forcedotcom, '3MVG9y6x0357Hlef5Po4snvt4OuD1R8J96jW4bab4.bQ2PGVG6DrD5.oPouotqVTMHDWxwH1.dtGVajMfWqL.', '6178009554364976379'
  # localhost
  # provider :forcedotcom, '3MVG9y6x0357Hlef5Po4snvt4OtwxU8CB.9zQ1iZ2Jl9y3ChSAVNNi12PuYVc2CbZNffsvo4_FM1VdrkHOsgM', '6854428245508171326'
end