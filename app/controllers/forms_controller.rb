class FormsController < ApplicationController
  def index
  	# This is a comment
  	@name = "Dan"
  	@location ="Steer"
  	@now = Time.now
  	# @message = "Welcome to " + @location + ", " + @name
  	@message = "Welcome to #{@location}, #{@name}"

		# This is an array
   @list = ["Rik", "Amelia", "Tim", "Calum"]

   @competition_won_by_sev = true

   @sev_votes = rand(100)
   @mark_votes = rand(100)

   if @sev_votes > @mark_votes
    @list << "Sev"
  elsif @sev_votes == @mark_votes
    @list << "Sev"
    @list << "Mark"
  else
    @list << "Mark"
  end

  @forms = Form.order("name")

  end

  def show
   @form = Form.find(params[:id])
  end

  def new
   @form = Form.new
  end

  def create
   @form = Form.new(params[:form])
     if @form.save
      flash[:success] = "You have sucessfully added a reponse!"
      redirect_to forms_path
    else
      render "new"
    end
  end

  def edit
    @form = Form.find params[:id]
  end 

  def update
    @form = Form.find params[:id]
    if @form.update_attributes(params[:form])
      flash[:success] = "You have sucessfully edited #{form}!"
      redirect_to form_path(@form)
    else
      render "edit"
    end
  end

  def destroy
    @form = Form.find params[:id]
    @form.destroy
      if @form.destroy
      flash[:success] = "You have sucessfully deleted the reponse!"
      end
    redirect_to forms_path
  end
    
end
