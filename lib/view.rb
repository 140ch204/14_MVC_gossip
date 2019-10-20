# 4_ Contrôlé par le contrôleur
class View
  
  def initialize()
  
  end

  def perform()

  end

  def create_gossip()
    puts " Mon potin = "
    print " > "
    content_user = gets.chomp
    puts " Et l'auteur = "
    print " > "
    author_user = gets.chomp

    return params = { content: content_user, author: author_user }
  end

  def index_gossips(gossips_array)
    puts "Voici tous les potins :"
    gossips_array.each do |gossip|
      puts " Le potin est #{gossip.content} et l'autheur est #{gossip.author} " 
    end
  end 

end