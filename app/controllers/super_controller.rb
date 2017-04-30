class SuperController < ApplicationController
  before_action :authenticate_user!

end
