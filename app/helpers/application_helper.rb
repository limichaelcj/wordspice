module ApplicationHelper
  def self.call_datamuse(word)
    response = RestClient.get("https://api.datamuse.com/words?sp=#{word}&max=1")
    JSON.parse response
  end
end
