module Api
  class Datamuse
    def self.search(word)
      response = RestClient.get("https://api.datamuse.com/words?sp=#{word}&max=1")
      data = JSON.parse response # data = array
      if data[0]
        data[0]["word"] == word
      else
        false
      end
    end
  end
end
