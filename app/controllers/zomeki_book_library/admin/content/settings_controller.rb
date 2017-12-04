# Controller For Managing Content Settings

module ZomekiBookLibrary
  class Admin::Content::SettingsController < Cms::Admin::Content::SettingsController
    def model
      ZomekiBookLibrary::Content::Setting
    end
  end
end
