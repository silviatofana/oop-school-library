require './app'

def main
  puts 'Welcome to School Library App'
  app = App.new
  app.menu_selection
end

main
