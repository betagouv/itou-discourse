require 'rack/rewrite'

use Rack::Rewrite do
  r301 %r{.*}, 'https://communaute.inclusion.beta.gouv.fr$&'
end

class EmptyServer
  def call(env)
    # We need to boot rack, but all the redirections happen inside the rack-rewrite middleware above
  end
end

run EmptyServer.new
