module UsersHelper
  def user_link
    '/'+current_user.name
  end
  def pokemon_image(number)
    file = File.read('app/assets/pokemon.en.json')
    pokemon_hash = JSON.parse(file)
    number = format("%03d", number)
    image_tag("pokemon/"+/[0-9]{3}.{10}.png/.match(Dir["app/assets/images/pokemon/#{number}*"][0]).to_s) 
  end
  
  def pokemon_image_type1(number)
    file = File.read('app/assets/pokemon.types.json')
    pokemon_hash = JSON.parse(file)
	type = pokemon_hash[number.to_s]['type_1']
	
	if (type == 'none')
		return ""
	end
	
    return type
  end
  
  def pokemon_image_type2(number)
    file = File.read('app/assets/pokemon.types.json')
    pokemon_hash = JSON.parse(file)
	type = pokemon_hash[number.to_s]['type_2']
	
	if (type == 'none')
		return ""
	end
	
    return type
  end
end
