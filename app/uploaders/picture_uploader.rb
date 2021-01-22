class PictureUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # ↓この行のコメントアウトを外す
  include CarrierWave::MiniMagick
  # 縦横どちらかが400pxを超えていた場合、適切なサイズに縮小するオプション
  process resize_to_limit: [500, 500]
