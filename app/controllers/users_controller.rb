class UsersController < ApplicationController
  def index
    render json: User.all.as_json(
      include: {
        donations: {
          methods: :amount
        }
      }
    )
  end
end