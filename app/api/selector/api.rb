module Selector
  class API < Grape::API
    prefix 'selector' #Define in routes.rb
    version 'v1', using: :path
    format :json

    helpers do
      def random_select
        @user = User.find_by(hashed_email: params[:malskey])
        if @user.nil?
          @user = User.find_by(hashed_email: "5fae0c95590e810b6f297fcea1d627bcab8fe7656a10e62347c652495a42be8e")
        end
        @arr = Array.new
        @links = Link.where(user_id: @user.id)
        @links.each do |link|
          @arr.push(link.link)
        end
        @selected = @arr.sample
        return @selected
      end
    end

    resource :links do
      desc 'Return all links'
      get do
        Link.all
      end

      desc 'Random select'
      get 'random' do
        random_select
      end

      #ID
      desc "return a link"
      params do
        requires :id, type: Integer
      end
      # http://localhost:3000/api/selector/v1/{:id}
      get ':id' do
        Link.find(params[:id])
      end


    end
  end
end
