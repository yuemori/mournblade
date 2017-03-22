require 'mournblade/version'
require 'curses'

module Mournblade
  class << self
    def start
      Curses.init_screen

      begin
        window = create_window
        window.getch
        window.close
      ensure
        Curses.close_screen
      end
    end

    private

    def create_window
      Curses::Window.new(0, 0, 0, 0).tap do |window|
        window.setpos(0, 0)
        window.addstr('hello, world!')
        window.refresh
      end
    end
  end
end
