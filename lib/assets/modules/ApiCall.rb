module ApiCall
  def self.datamuse(word)
    response = RestClient.get("https://api.datamuse.com/words?sp=#{word}&max=1")
    JSON.parse response #return ruby hash of json data
  end
end
