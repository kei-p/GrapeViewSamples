class API::Root < Grape::API
  format :json

  resource :jbuilder do
    formatter :json, Grape::Formatter::Jbuilder

    get '', jbuilder: 'jbuilder/user' do
      @user = User.first
    end
  end

  resource :rabl do
    formatter :json, Grape::Formatter::Rabl

    get '', rabl: 'rabl/user' do
      @message = 'hoge'
      @user = User.first
    end
  end

  resource :entity do
    get do
      @user = User.first
      present @user, with: Entity::User
    end
  end
end
