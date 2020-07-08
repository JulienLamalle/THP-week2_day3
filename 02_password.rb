def signup
  puts "Veuillez choisir votre mot de passe"
  mot_de_passe = gets.chomp
end


def login(mot_de_passe)
  puts "Veuillez entrer votre mot de passe"
  passe_in_login = gets.chomp
  if passe_in_login == mot_de_passe
    puts "Vous allez être redirigé"
  end
  while passe_in_login != mot_de_passe
    puts " Veuillez resaisir un mot de passe correct"
    passe_in_login = gets.chomp
  end
end


def welcome_screen 
  puts "Bienvenu sur votre espace, voici quelques secrets bien gardés : fvdkldfvjkdfvjxjlvxjldfvxjkldfjdfxdfjlxdfjlxdfkljkxdfjklx"
end

def perform
  mot_de_passe = signup
  login(mot_de_passe)
  welcome_screen
end

perform