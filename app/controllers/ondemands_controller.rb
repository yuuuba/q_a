class OndemandsController < ApplicationController
  before_action :set_ondemand, only: %i[ show edit update destroy ]

  def index
  end

  def show
    @ondemand_tags = @ondemand.ondemand_tags
  end

  def new
    @ondemand = Ondemand.new
  end

  def edit
  end

  def create
    @ondemand = Ondemand.new(
      title:params[:ondemand][:title],
      body:params[:ondemand][:body],
      user_id:params[:user][:id]
    )

    tag_list = params[:ondemand][:name].split(' ')

    if @ondemand.save!
      @ondemand.save_tag(tag_list)
      redirect_to new_ondemand_path
    end
  end

  def update
    if @ondemand.update(ondemand_params)
      redirect_to ondemand_path, notice: "編集しました"
    else
      flash.now[:danger] = "編集に失敗しました"
      render 'edit'
    end
  end

  def destroy
    if @ondemand.destroy
      redirect_to ondemands_path, notice: "削除が完了しました"
    else
      flash.now[:danger] = "削除に失敗しました"
      render 'show'
    end
  end

  private
    def set_ondemand
      @ondemand = Ondemand.find(params[:id])
    end

    def ondemand_params
      params.require(:ondemand).permit(:title, :body, :user_id)
    end
end
