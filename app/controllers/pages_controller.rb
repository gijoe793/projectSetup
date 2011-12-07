class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
  end

  def about
  end
  
  def doctors
    @title = "Doctors"
  end
  
  def images
    @title = "Scans/Images"
  end
  
  def record
    @title = "Medical Record"
  end

end
