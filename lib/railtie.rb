module Kittenholder
  class Railtie < Rails::Railtie
    initializer "Kittenholder.meow_helpers" do
      ActionView::Base.send :include, MeowHelpers
    end
  end
end
