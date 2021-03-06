# Controller For Managing Data
class ZomekiBookLibrary::Admin::BooksController < Cms::Controller::Admin::Base
  include Sys::Controller::Scaffold::Base
  layout  'admin/cms'

  def pre_dispatch
    @content = ZomekiBookLibrary::Content::Book.find(params[:content])
    return error_auth unless Core.user.has_priv?(:read, item: @content.concept)
  end

  def index
    @items = @content.books.paginate(page: params[:page], per_page: params[:limit])
  end

  def show
    @item = @content.books.find(params[:id])
    return error_auth unless @item.readable?
    _show @item
  end

  def new
    @item = @content.books.new
  end

  def create
    @item = @content.books.new(user_params)
    _create(@item)
  end

  def update
    @item = @content.books.find(params[:id])
    return error_auth if !Core.user.root? && @item.root?
    @item.attributes = user_params
    _update(@item)
  end

  def destroy
    @item = @content.books.find(params[:id])
    return error_auth if !Core.user.root? && @item.root?
    _destroy(@item)
  end

  private

  def user_params
    params.require(:item).permit(:title,:author,:summary,:description, :published_at)
  end
end