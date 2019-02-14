module Api
  class Datamuse
    def self.search(word)
      response = RestClient.get("https://api.datamuse.com/words?sp=#{word}&max=1")
      JSON.parse response #return ruby hash of json data
    end
  end
end
