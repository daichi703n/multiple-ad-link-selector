module Selector
  class API < Grape::API
    prefix 'api' #Define in routes.rb
    version 'v1', using: :path
    format :json
    resource :link do
      desc 'Return all links'
      get do
        Link.all
      end
    end
  end
end
