require 'sinatra'
require './block'

b = Blockchain.new

get '/' do

  message = "<center>"

  b.all_chains.each do |a|

   message << "번호는:" + a["index"].to_s + "<br>"
   message << "Nonce는:" + a["nonce"].to_s + "<br>"
   message << "시간은:" + a["time"].to_s + "<br>"
   message << "앞주소는:" + a["previous_address"].to_s + "<br>"
   message << "내주소는:" + Digest::SHA256.hexdigest(a.to_s) + "<br>"
   message << "transactions:" + a["transactions"].to_s + "<br>"
   message << "<hr>"
  end


 message << "</center>"
 end
 


 get '/mine' do
  b.mining.to_s
 end

 get '/trans' do
  b.make_a_trans(params["sender"], params["recv"], params["amount"]).to_s	
 end
 
 get '/new_wallet' do
  b.make_a_new_wallet.to_s
 end

 get '/all_wallet' do
  b.show_all_wallet.to_s
 end

