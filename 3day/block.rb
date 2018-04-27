class Blockchain
     def initialize
      @chain = []
     end
	 def mining

	   history = []

	   begin
	   nonce = rand(100000)
	   history<<nonce
	   hashed = Digest::SHA256.hexdigest(nonce.to_s)
	   end while hashed[0..3]!= "0000"
	   
        block = {
        	"index" => @chain.size+ 1, 
        	"time" => Time.now, 
        	"nonce" => nonce, 
        	"previous_address" => Digest::SHA256.hexdigest(last_block.to_s)
        }   
       
        @chain << block

	   history.size

	 end
     
     def last_block
       @chain[-1]
     end 
  
  def all_chains
  	@chain
  end

end
