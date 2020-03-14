class Api::ItemsController < ApplicationController
  def index
    @games = Game.all
    render "index.json.jb"
  end

  def show
    @game = Game.find(params[:id])
    render "show.json.jb"
  end

  def create
    @game = Game.new(
      title: params[:title],
      description: params[:description],
      platform: params[:platform],
    )
    @game.save
    render "show.json.jb"
  end

  def update
    @game = Game.find(params[:id])
    @game.title = params[:title] || @game.title
    @game.description = params[:description] || @game.description
    @game.platform = params[:platform] || @game.platform
    if @game.save
      render "show.json.jb"
    else
      render json: { errors: @game.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    render json: { message: "This title was successfule destroyed" }
  end
end
