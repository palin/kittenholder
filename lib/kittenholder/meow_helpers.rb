module Kittenholder
  module MeowHelpers
    require 'kittenholder/meow_builder'
    include MeowBuilder

    def kittenholder(width, height, bnw = false)
      check_parameters(width, height, bnw)
    end
  end
end