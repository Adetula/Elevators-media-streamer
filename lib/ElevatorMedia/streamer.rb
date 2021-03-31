require 'nokogiri'
require 'open-uri'
require 'json'
require 'rest-client'


class Streamer
    
    def self.getContent(action ="")
        if action.length > 0

            if action.include? "activity"
                res = RestClient.get("https://www.boredapi.com/api/activity")
                puts res
                hash = JSON.parse(res)
                html_body="<div style='margin:0 auto; width:80%'>
                                    
                                    <p><label>"+hash['type'].to_s+"</label></p>
                                    <p><label>"+hash['activity'].to_s+"</label></p>
                                    <p><label>Get Working</label></p>
                                </div>"
            
                puts html_body
                return html_body


            elsif action.include? "wrongurl"
                res = RestClient.get("https://wrongurl")
            end
            
        else
            raise RuntimeError.new "We are sorry"
        end 
    
    end

end