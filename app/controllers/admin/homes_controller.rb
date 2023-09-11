class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
    @count = Order.ordered_today.count
  end
  
  def search
    @content = params['search']['content']
    @method = params['search']['method']
    @result = search_for( @content, @method)
  end

  private

  def search_for( content, method)
      if method == 'forward'
        Item.where('name LIKE ?', content + '%').includes(:genre)
      elsif method == 'backward'
        Item.where('name LIKE ?', '%' + content).includes(:genre)
      elsif method == 'perfect'
        Item.where(name: content).includes(:genre)
      else # partial
        Item.where('name LIKE ?', '%' + content + '%').includes(:genre)
      end
  end
end