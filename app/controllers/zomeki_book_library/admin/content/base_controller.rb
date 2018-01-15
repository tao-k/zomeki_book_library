# Controller For Managing Content Data
class ZomekiBookLibrary::Admin::Content::BaseController < Cms::Admin::Content::BaseController
  def model
    ZomekiBookLibrary::Content::Book
  end
end