class Potepan::ProductsController < ApplicationController
  RELATED_PRODUCTS_LIMIT_NUMBER = 4
  def show
    @product = Spree::Product.find_by(id: params[:id]) || Spree::Product.find_by(slug: params[:id])
    @variant = @product.variants.includes(:images).find_by(id: params[:guiest_id3]) ||
                @product.variants.includes(:images).first ||
                @product
    @related_products = @product.related_products.limit(RELATED_PRODUCTS_LIMIT_NUMBER)
  end
end
