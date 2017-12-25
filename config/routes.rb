mod = "zomeki_book_library"
ZomekiCMS::Application.routes.draw do
  ## admin
  scope "#{ZomekiCMS::ADMIN_URL_PREFIX}/#{mod}/c:concept", :module => mod, :as => mod do
    resources :content_base,
      :controller => 'admin/content/base'

    resources :content_settings, :only => [:index, :show, :edit, :update],
      :controller => 'admin/content/settings',
      :path       => ':content/content_settings'

  #  ## contents
    resources(:books,
      :controller => 'admin/books',
      :path       => ':content/books')

    ## nodes
    resources :node_books,
      :controller => 'admin/node/books',
      :path       => ':parent/node_books'

    ## pieces
    resources :piece_books,
      :controller => 'admin/piece/books'
  end


  ## public
  scope "_public/#{mod}", :module => mod, :as => '' do
    get 'node_books(/index.:format)' => 'public/node/books#index'
  end
end
ZomekiBookLibrary::Engine.routes.draw do
  root "#{mod}/contents#index"
  scope "/", :module => mod, :as => mod do
    resources :contents do
      collection do
        get :install
      end
    end
  end

end

ZomekiBookLibrary::Engine.routes.draw do
  root "#{mod}/contents#index"
  scope "/", :module => mod, :as => mod do
    resources :contents do
      collection do
        get :install
      end
    end
  end

end
