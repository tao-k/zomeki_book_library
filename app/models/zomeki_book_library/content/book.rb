class ZomekiBookLibrary::Content::Book < Cms::Content
  default_scope { where(model: 'ZomekiBookLibrary::Book') }

  has_one :public_node, -> { public_state.where(model: 'ZomekiBookLibrary::Book').order(:id) },
  foreign_key: :content_id, class_name: 'Cms::Node'

  has_many :settings, -> { order(:sort_no) },
    foreign_key: :content_id, class_name: 'ZomekiBookLibrary::Content::Setting', dependent: :destroy

  has_many :books, foreign_key: :content_id, class_name: 'ZomekiBookLibrary::Book', dependent: :destroy

end