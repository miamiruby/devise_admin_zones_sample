class UserController < ApplicationController
  before_action :authenticate_user!
  layout 'user'
end
