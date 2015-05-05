class ZodiacsController < ApplicationController

  def random
    @firstNum = params["the_first_num"].to_i
    @secondNum = params["the_second_num"].to_i
    @randomNum = Random.rand(@firstNum..@secondNum)
  end

  def sign

    @zodiac = Zodiac.find_by( { :sign => params["the_sign"]})

  end

  def creature

    @zodiac = Zodiac.find_by( { :creature => params["the_creature"]})

  end

  def idlookup
    #@zodiac = Zodiac.find_by( { :id => params["the_id"]})
    @zodiac = Zodiac.find(params["the_id"].to_i)
  end

  def index
    @list_of_zodiacs = Zodiac.all
  end

  def new_form
    #no real function, just html form
  end

  def create_row
    #  {"symbol"=>"Hi", "creature"=>"there", "fortune"=>"Larry"}
    z = Zodiac.new
    z.sign = params["symbol"]
    z.creature = params["creature"]
    z.fortune = params["fortune"]
    z.save

    # re-direct them to the main index view page
    # redirect_to("http://localhost:3000/zodiacs")
  end

  def delete_row
    z = Zodiac.find(params["the_id"])
    z.destroy
    redirect_to("http://localhost:3000/zodiacs")
  end

end
