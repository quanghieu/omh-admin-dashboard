class Admin::OhmageDataPointsController < ActionController::Base
    
  def index
    @user = User.find(params[:user_id])
    respond_to do |format|
       format.csv {render text: @user.ohmage_data_csv }
    end
  end 
end
