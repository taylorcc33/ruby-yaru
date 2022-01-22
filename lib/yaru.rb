# frozen_string_literal: true

require "json"
require_relative "yaru/version"
require_relative "yaru/help"
require_relative "yaru/add"
require_relative "yaru/list"

class Yaru
  def initialize(cmd, arg)
    @cmd = cmd
    @arg = arg

    # @store = Yaru::Store.new
  end

  def start
    case @cmd
    when nil, "help", "h"
      display_help
    when "a", "add"
      add(@arg)
    when "l", "list"
      list
    end
  end
end
