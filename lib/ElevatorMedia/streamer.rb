require 'nokogiri'
require 'open-uri'
require 'json'
require 'rest-client'


class Streamer
    
    def getContent(action ="")
        if action.include? "activity"
            res = RestClient.get("https://www.boredapi.com/api/activity")
            puts res
            hash = JSON.parse(res)
            html_body="<div style='margin:0 auto; width:80%'>
                                        
                                        <p><label>Activity:</label><label>"+hash['activity'].to_s+"</label></p>
                                        <p><label>Type:</label><label>"+hash['type'].to_s+"</label></p>
                                        <p><label>Participants:</label><label>"+hash['participants'].to_s+"</label></p>
                                        <p><label>Price:</label><label>"+hash['price'].to_s+"</label></p>
                                        <p><label>Get Working</label></p>
                                    </div>"
                
            puts html_body
            return html_body
        else
            raise RuntimeError.new "We are sorry this action is not supported"
        end
        
        
    
    end

end