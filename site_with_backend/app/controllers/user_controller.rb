class UserController < ApplicationController
  def new
  end
#ici on crée les fichiers par rapports aux donnée
  def create
    if params['username'] != ""
      user = User.create(username: params['username'], bio: params['bio'])
      user.save
      redirect_to home_path
    else
      redirect_to new_user_path
    end
  end
  #ici on affiche les parametres dans le tableau
  def show
    if params['id_user'].to_i != 0 && params['id_user'].to_i != ""
      @user = User.find(params['id_user'].to_i)
      p @user.username
    else
      redirect_to home_path
    end

    # def suppr
    #   if params['id_user'].to_i != 0 && params['id_user'].to_i != ""
    #     @user = User.find(params['id_user'].to_i)
    #     @user.destroy
    #   else
    #     redirect_to home_path
    #   end
    # end
  end
end
