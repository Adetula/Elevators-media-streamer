require 'nokogiri'
require 'open-uri'
require 'json'
require 'rest-client'


class Streamer
    
    def self.getContent(action ="")
        if action.length > 0

            if action.include? "bitcoin"
                res = RestClient.get("https://api.coindesk.com/v1/bpi/currentprice.json")
                puts res
                hash = JSON.parse(res)
                html_body="<div style='margin:0 auto; width:80%'>
                                    
                                    <p><label>"+hash['setup'].to_s+"</label></p>
                                    <p><label>bitcoin</label></p>
                                </div>"
            
                puts html_body
                return html_body

            elsif action.include? "wrongurl"
                res = RestClient.get("https://wrongurl")
            end
            
        else
            raise RuntimeError.new "Error"
        end 
    
    end

end