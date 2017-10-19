require 'sqlite3'

class Tweets
  def initialize
    @db = SQLite::Database.new("./data/tweets.db")
    begin
      @db = SQLite3::Database.open "./data/tweets.db"
      @db.execute "CREATE TABLE IF NOT EXISTS Tweets(id INTEGER PRIMARY KEY keyword TEXT)"
    rescue SQLite3::Exception => e
      puts "Exception occurred"
      puts e
  end

  def insert_tweet(id, keyword)
    @db.execute( "INSERT INTO Tweets(id) VALUES (#{id}, #{keyword})" )
  end

  def exists?(id)
    result = @db.execute("SELECT * from Tweets WHERE id = #{id}")
    if result == []
      return false
    end

    true
  end

  def last_tweet
    result = @db.get_first_value("SELECT id from Tweets order by id desc limit 1")

    result.to_i
  end
end
