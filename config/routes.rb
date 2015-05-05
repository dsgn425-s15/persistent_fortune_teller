Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })



  # VARIABLE ROUTES
  # =======================

  get("/random/:the_first_num/:the_second_num",  { :controller => "zodiacs", :action => "random" })
  get("/signs/:the_sign",  { :controller => "zodiacs", :action => "sign" })

  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })

  # to build a form and then input that as a row into the database
  get("/zodiacs/new", { :controller => "zodiacs", :action => "new_form" })

  get("/create_zodiac", { :controller => "zodiacs", :action => "create_row" })

  get("/zodiacs/:the_id", { :controller => "zodiacs", :action => "delete_row" })

  get("/zodiacs", { :controller => "zodiacs", :action => "index" })

end
