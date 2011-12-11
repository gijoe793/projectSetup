class MedicalHistoryController < ApplicationController
  
  before_filter :authenticate
  
  def create
    @MedicalHistory = current_user.MedicalHistory.build(params[:MedicalHistory])
      
    if @MedicalHistory.save
      redirect_to root_path
    else
      render 'pages/home'
    end
  end
  
  def destroy
    
  end 
  
end