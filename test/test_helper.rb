$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'mournblade'

module Curses
  class << self
    %i(init_screen close_screen).each do |name|
      define_method(name) { |*_args| }
    end
  end

  class Window
    %i(initialize setpos addstr refresh getch close).each do |name|
      define_method(name) { |*_args| }
    end
  end
end

Mournblade.include Curses
