Dado('que acesso a tela home do sistema') do
    @home_screen.go_home
end
  
Então('visualizo a tela home do sistema') do
    expect(@home_screen.system_home_screen_accessed).to eql true
end

Então('verifico a url do sistema') do
    expect(@home_screen.system_url_accessed).to eql true
end