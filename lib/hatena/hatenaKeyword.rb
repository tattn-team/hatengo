require 'xmlrpc/client'

module Hatena
  class HatenaKeyword
    SERVER = XMLRPC::Client.new('d.hatena.ne.jp', '/xmlrpc', 80)
    def search sentence
      begin
        #html = server.call 'hatena.setKeywordLink', { body: sentence}
        keywords = SERVER.call 'hatena.setKeywordLink', { body: sentence,  mode: 'lite' }
      rescue XMLRPC::FaultException => e
        puts "Error:"
        puts e.faultCode
        puts e.faultString
      end
      words = []
      keywords["wordlist"].each do |keyword|
        words.push keyword["word"]
      end
      words.uniq!
      words
    end
  end
end
