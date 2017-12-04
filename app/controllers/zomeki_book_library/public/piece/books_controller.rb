module ZomekiBookLibrary
  class Public::Piece::BooksController < Sys::Controller::Public::Base
    def pre_dispatch
      @content = ZomekiBookLibrary::Content::Book.find_by(id: Page.current_piece.content_id)
      return http_error(404) unless @content
    end

    def index
      @items = @content.books
    end
  end

end