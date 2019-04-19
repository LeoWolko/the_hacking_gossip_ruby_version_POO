require "gossip"
require "view"

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    my_gossip = Gossip.new(params["content"], params["author"]) #=> Crée une instance de potin, sauvergardée juste dans cette variable
    my_gossip.save #=> Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV
  end

  def index_gossips
    all_gossips = Gossip.all
    params = @view.index_gossips(all_gossips)
  end

  def delete_gossip
    all_gossips = Gossip.all
    params = @view.delete_gossip(all_gossips)
end
