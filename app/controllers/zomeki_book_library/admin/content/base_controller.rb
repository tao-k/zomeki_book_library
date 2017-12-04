# Controller For Managing Content Data

module ZomekiBookLibrary
  class Admin::Content::BaseController < Cms::Admin::Content::BaseController
    layout  'admin/cms'
    def model
      ZomekiBookLibrary::Content::Book
    end
  end
end