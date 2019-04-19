
class View

  def create_gossip
    puts "Which content ?"
    content = gets.chomp
    puts "Which author ?"
    author = gets.chomp
    return params = {"content" => content, "author" => author}
  end

  def index_gossips(gossips)
    gossips.each do |potin|
      puts "#{potin.author} a dit : #{potin.content} "
      puts ""
    end
  end

  def delete_gossip(gossips)
    puts "Quel author?"
    author_to_delete = gets.chomp
    gossips.each do |potin|
      if potin.author == author_to_delete
end
