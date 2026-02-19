Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "home"})
  get("/process_roll", { :controller => "dice", :action => "roll"})
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
end
