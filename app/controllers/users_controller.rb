# users_controller.rb
class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render plain: User.order(:name).map {|user| user.to_pleasant_string}.join("\n")
  end
  def create
    name=params[:name]
    email=params[:email]
    password=params[:password]
    #render plain: "hey! the params are #{params.to_s}"
    new_user = User.create!(
      name: name,
      email: email,
      password: password,
    )
    response_text= "New user created with id #{new_user.id}"
    render plain: response_text
  end

  def show
    id = params[:id]
    user=User.find(id)
    render plain: user.to_pleasant_string
  end
  def login
    email = params[:email]
    password = params[:password]
    user = User.find_by(email: email, password: password)
    render plain: user.present?
  end
