class RestaurantesController < ApplicationController
  def index
    @restaurantes = Restaurante.oder("nome")
  end
  
  def show 
    @restaurante = Restaurante.find(params[:id])
  end
  
  def new
    @restaurante = Restaurante.new
  end
  
  def create
    @resturante = Restaurante.new
    if @restaurante.save?
      redirect_to(:action, "show", :id => restaurante)
    end 
      render :action => "new"
    end
  end
  
  def edit
    @restaurantes = Restaurante.find(params[:id])
  end
  
  def update
    @restaurante = Restaurante.find(params[:id])
    
    if @restaurante.update_attributes(params[:restaurante])
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @restaurante => Restaurante.find(params.[:id])
    @restaurante.destroy
    redirect_to(:action => "index")
  end
end
