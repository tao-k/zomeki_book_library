module ZomekiBookLibrary
  class Book < ApplicationRecord
    include Sys::Model::Base
    include Sys::Model::Base::Config
    include Sys::Model::Auth::Manager
  end
end
