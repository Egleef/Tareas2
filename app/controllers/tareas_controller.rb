class TareasController < ApplicationController
http_basic_authenticate_with name: "eglee", password: "1234", except: :index

def index
  @tareas = Tarea.all
end
  
def new
  @tarea = Tarea.new
end
  

def destroy
  @tarea = Tarea.find(params[:id])
  @tarea.destroy
  redirect_to tareas_path
end

def edit
  @tarea = Tarea.find(params[:id])
end

def update 
  @tarea = Tarea.find(params[:id])
  if @tarea.update(tarea_params)
    redirect_to tarea_path(@tarea)
  else
    render 'edit'
  end
end

def create
  @tarea = current_user.tareas.new(tarea_params)
  
  if @tarea.save
    flash[:notice] = 'se salvo la tarea correctamente'
    redirect_to tarea_path(@tarea)
  else
    flash[:error] = @tarea.errors.full_messages
    render :new
  end
end
  
  
def show
  @tarea = Tarea.find(params[:id])
end

private

  def tarea_params
    params.require(:tarea).permit(:title, :description)
  end
end

