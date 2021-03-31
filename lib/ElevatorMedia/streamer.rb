
require 'open-uri'
require 'json'
require 'rest-client'

class Streamer
   def getContent()
    #we will call a api and then build your html tag
    #need to find the api that you will call : https://localcoviddata.com/covid19/v1/cases/covidTracking?state=CA&daysInPast=7
    #build an html tag
    #return the html tag
    def self.getContent(action ="")
        if action.length > 0

            if action.include? "covid"
                res = RestClient.get("https://localcoviddata.com/covid19/v1/cases/covidTracking?state=CA&daysInPast=7")
                puts res
            end
        end
    end
        return "<div> stringify </div>"
    end


end