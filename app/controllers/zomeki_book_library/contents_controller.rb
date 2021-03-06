class ZomekiBookLibrary::ContentsController < Cms::Controller::Admin::Base
  layout  'admin/cms'

  def pre_dispatch
    return http_error(403) unless Core.user.root?
  end

  def index
    @items = ZomekiBookLibrary::Content::Book.paginate(page: params[:page], per_page: 10)
  end

  def install
    install_plugin
    redirect_to zomeki_book_library_engine.root_path
  end

private

  def install_plugin
    `bundle exec rake zomeki_book_library:intall_plugin RAILS_ENV=#{Rails.env}`
  end

end
