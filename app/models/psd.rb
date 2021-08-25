class Psd < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_one_attached :psd

  def psd_url
    # 紐づいている画像のURLを取得する
    psd.attached? ? url_for(psd) : nil
  end
end
