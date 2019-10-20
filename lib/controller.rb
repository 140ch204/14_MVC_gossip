# 2_ Contrôlé par le routeur

require './lib/gossip'
require './lib/view'

class Controller

  def initialize()
    @view = View.new
  end

  def perform()

  end

  def create_gossip()
    params = @view.create_gossip
    gossip = Gossip.new(params[:content], params[:author])
    puts "Gossip créé"
    gossip.save()

    puts "Gossip enregistré"
  end

  def  index_gossips()

    all_gossips_array = Gossip.all() 
    @view.index_gossips(all_gossips_array)
    
  end


end