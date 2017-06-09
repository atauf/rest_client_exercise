require 'rest-client'

keepSearching = true

while keepSearching
	puts "What would you like to search for?"
	response = gets.chomp
	bingSearch = "http://www.bing.com/search?q=#{response}"#&qs=n&form=QBLH&sp=-1&pq=#{response}&sc=8-3&sk=&cvid=1C963EFA1E4D43E8AE52AD8E1F057FD9'
	restClientData = RestClient.get bingSearch
	puts "Code: #{restClientData.code}"
	puts "Headers: \n#{restClientData.headers}"
	puts "Cookies: \n#{restClientData.cookies}"
	puts "Body: \n#{restClientData.body}"
	puts "\nWould you like to search something else? [Y/N]"
	response = gets.chomp
	response = response[0].downcase
	if response != 'y'
		keepSearching = false
	end
end

puts "Ok, go use Google!"