Rails.application.routes.draw do
  get("/", {:controller=> "game", :action=>"homepage"})
  get("/rock", {:controller=> "game", :action=>"rocks"})
  get("/scissors", {:controller=> "game", :action=>"scissors"})
  get("/paper", {:controller=> "game", :action=>"papers"})



end
