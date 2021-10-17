# frozen_string_literal: true

require_relative "yaru/version"
require_relative "yaru/help"

module Yaru
  class App
    def initialize(cmd, arg)
      @cmd = cmd
      @arg = arg
    end

    def start
      case @cmd
      when nil, "help", "h"
        display_help
      end
    end
  end
end
