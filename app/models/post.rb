# class POST < Net::HTTP::Post	
# 	uri = URI.parse("https://ohmage-omh.smalldata.io/dsu/validate-survey")
# 	http = Net::HTTP.new(uri.host, uri.port)
# 	http.use_ssl = true
# 	http.verify_mode = OpenSSL::SSL::VERIFY_NONE
# 	request = Net::HTTP::Post.new("/v1.1/auth")
# 	request.add_field('Content-Type', 'application/json')
# 	request.body = {'credentials' => {'username' => 'username', 'key' => 'key'}}.to_json
# 	response = http.request(request)
# end 