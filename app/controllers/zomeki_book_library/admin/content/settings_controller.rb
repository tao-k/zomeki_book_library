# Controller For Managing Content Settings
class ZomekiBookLibrary::Admin::Content::SettingsController < Cms::Admin::Content::SettingsController
  def model
    ZomekiBookLibrary::Content::Setting
  end
end