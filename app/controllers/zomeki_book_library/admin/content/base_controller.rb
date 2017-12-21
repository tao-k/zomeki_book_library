# Controller For Managing Content Data

class ZomekiBookLibrary::Admin::Content::BaseController < Cms::Admin::Node::BaseController
  layout  'admin/cms'
  def model
    ZomekiBookLibrary::Content::Book
  end
end