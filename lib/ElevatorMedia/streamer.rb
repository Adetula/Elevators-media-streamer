require 'nokogiri'
require 'open-uri'
require 'json'
require 'rest-client'


class Streamer
    
    def self.getContent(action ="")
        if action.length > 0

            if action.include? "random_joke"
                res = RestClient.get("https://official-joke-api.appspot.com/random_joke")
                puts res
                hash = JSON.parse(res)
                html_body="<div style='margin:0 auto; width:80%'>
                                    
                                    <p><label>"+hash['setup'].to_s+"</label></p>
                                    <p><label>"+hash['punchline'].to_s+"</label></p>
                                    <p><label>It is a Joke</label></p>
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