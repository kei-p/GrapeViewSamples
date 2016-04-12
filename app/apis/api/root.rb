class API::Root < Grape::API
  format :json

  resource :jbuilder do
    get do
      { message: 'demo' }
    end
  end

  resource :rabl do
    get do
      { message: 'demo' }
    end
  end

  resource :entity do
    get do
      { message: 'demo' }
    end
  end
end
