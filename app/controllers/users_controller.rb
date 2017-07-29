class UsersController < ApplicationController
  def index
    render json: User.all.as_json(
      include: {
        donations: {
          methods: :amount
        }
      },
      methods: [
        :donated,
        :left_to_donate
      ]
    )
  end
end
