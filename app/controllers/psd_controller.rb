class PsdController < ApplicationController
  def index
    render json: Psd.all, methods: [:psd_url]
  end

  def create
    psd = Psd.new(psd_params)
    if psd.save
      render json: psd, methods: [:psd_url]
    else
      render json: psd.errors, status: 422
    end
  end

  def destroy
    psd = Psd.find(params[:id])
    psd.destroy! # 失敗した時には例外をスローする
    render json: psd
  end

  private 

  def psd_params
    params.permit(:title, :psd)
  end
end
