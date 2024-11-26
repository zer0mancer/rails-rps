Rails.application.routes.draw do
  get("/", {:controller=> "game", :action=>"homepage"})
  get("/rocks", {:controller=> "game", :action=>"rocks"})
  get("/scissors", {:controller=> "game", :action=>"scissors"})
  get("/papers", {:controller=> "game", :action=>"papers"})



end
