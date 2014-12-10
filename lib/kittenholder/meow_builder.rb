module Kittenholder
  module MeowBuilder
    require 'kittenholder/meow_settings'
    include MeowSettings

    def check_parameters(width, height, bnw)
      width = cat_width(width)
      height = cat_height(height)
      bnw = cat_black_and_white?(bnw)

      build_url(width, height, bnw)
    end

    private
      def build_url(width, height, bnw)
        "#{MEOW_PATH}/#{bnw}#{width}/#{height}"
      end

      def cat_width(width)
        width.to_i rescue MEOW_DEFAULT_WIDTH
      end

      def cat_height(height)
        height.to_i rescue MEOW_DEFAULT_HEIGHT
      end

      def cat_black_and_white?(bnw)
        bnw ? 'g/' : ''
      end
  end
end