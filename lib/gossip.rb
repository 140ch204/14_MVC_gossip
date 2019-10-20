# 3_ En interface avec le contrôleur

require 'pry'


class Gossip

  attr_accessor :content , :author

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save()
    file = File.open("./db/gossip.csv", "a")
    file.puts(@author + ";" + @content +"\n")
    file.close
  end

  def self.all()  
    # 1)création d'un array vide qui s'appelle all_gossips
    all_gossips = []

    file = File.open("./db/gossip.csv")

    # 2)chaque ligne de ton CSV.each do |ligne|
      # 2-a) gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
      # 2-b) all_gossips << gossip_provisoire - permet de rajouter le gossip provisoire au array
    # end

    file.each do |line|
      line = line.chomp.split(";")
      gossip_provisoire = Gossip.new(line[0],line[1])
      all_gossips << gossip_provisoire
    end
  
    # 3)return all_gossips - on renvoie le résultatl()
    all_gossips
  end

  #binding.pry
end