
require 'sinatra'
require './block'
aaa = Dog.new


get '/' do
	
 "dog" + aaa.my_weight
  
  end

get'/eat' do
 aaa.eat
 '먹었음'


end