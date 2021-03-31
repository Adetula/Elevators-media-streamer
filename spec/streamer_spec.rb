require 'elevator_media/streamer'


describe Streamer do 

    describe "getContent" do

        context "This test checks if the getContent method exists" do
            it "streamer has to containt the getContent method" do
                expect(Streamer).to  respond_to(:getContent)
            end
        end

        context "This test verifies if url is not provided" do
            it "returns RuntimeError" do
                expect { Streamer.getContent() }.to raise_error { |error|
                    expect(error).to be_a(RuntimeError)
                }
            end

        end

        context "This test checks if api url is correct in relation with the action" do
            it "returns a Joke" do
                result = Streamer.getContent("random_joke") 
                expect(result).to include("<label>It is a Joke</label>")
            end
        end

        # context "Test correct api url with ten jokes" do
        #     it "returns ten jokes" do
        #         result = Streamer.getContent("ten") 
        #         expect(result).to include("<label>Ten</label>")
        #     end
        # end

        context "Test a wrong api url" do
            it "returns SocketError" do
                expect { Streamer.getContent("wrongurl") }.to raise_error { |error|
                    expect(error).to be_a(SocketError)
                }
            end
        end
        
    end

end