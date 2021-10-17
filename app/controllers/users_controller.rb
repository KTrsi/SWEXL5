class UsersController < ApplicationController
  def index
    @users = User.all 
  end
  
  def new
   @user = User.new
  end
 
  def create
      uid = params[:user][:uid]
      pass = params[:user][:pass]
      $login_pass = BCrypt::Password.create(pass)
      @user = User.new(uid: uid,pass: $login_pass)
   if @user.save
       flash[:notice] = '1レコード追加しました'
      redirect_to root_path
   else
     render new_users_path
   end
  end

  
  
  def destroy
     user = User.find(params[:id])
     user.destroy
     redirect_to root_path
  end
  
  
end