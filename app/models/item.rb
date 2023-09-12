class Item < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    belongs_to :genre
    has_many :order_details
    has_one_attached :image
    scope :where_genre_active, -> { joins(:genre).where(genres: { is_active: true }) }
    def get_image(*size)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no-image.png')
      image.attach(io: File.open(file_path), filename: 'no-image.png', content_type: 'image/png')
    end
    
    if !size.empty?
      image.variant(resize: size)
    else
      image
    end
  end
  def with_tax_price
    (price * 1.1).ceil
    # ceilは切り上げ、floorが切り捨て、roundが四捨五入
  end

end
