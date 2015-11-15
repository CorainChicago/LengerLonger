class Joke

  def self.joke
    @response = Unirest.get "https://webknox-jokes.p.mashape.com/jokes/random?maxLength=100",
    headers:{
    " X-Mashape-Key" => "PFFTV8Efk5mshwyQirYrBIuyyAXvp15WSNYjsnaUl5ywppZGwV",
      "Accept" => "application/json"
    }
  end

end