module ZomekiBookLibrary
  class Engine < ::Rails::Engine
    config.after_initialize do |app|
      app.config.x.plugins << self
    end
  end
end
