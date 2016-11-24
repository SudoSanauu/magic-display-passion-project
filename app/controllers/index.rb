get '/' do
  erb :index
end

post '/' do 
	JSON.generate({
		key: "value",
		second_key: "second_value",
		third_key: {nested_key: "nested_value"}
	})
end