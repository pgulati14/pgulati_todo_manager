# users_controller.rb
class UsersController < ApplicationController
  def index
    render plain: User.order(:name).map {|user| user.to_pleasant_string}.join("\n")
  end
  def show
    id = params[:id]
    user=User.find(id)
    render plain: user.to_pleasant_string
  end

end
