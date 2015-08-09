class PersonsController < ApplicationController



  def show
  @person = Person.find(params[:id])
end
 
def new
  @person = Person.new
end

def create
  @person = Person.new(Person_params)
  if @Person.save
  else 
    render new
  end
end

 private
 def Person_params
   params.require(:Person).permit(:name, :email, :password, :password_confirmation)
 end
 
 
 
end



