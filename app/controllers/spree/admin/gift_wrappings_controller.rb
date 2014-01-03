module Spree
  module Admin
    class GiftWrappingsController < ResourceController
      before_filter :load_data

      def index
        @collection = collection
      end

      def new
        @gift_wrapping = Spree::GiftWrapping.new
        @gift_wrapping.build_image
      end

      def edit
        @gift_wrapping = Spree::GiftWrapping.find(params[:id])
        @gift_wrapping.build_image unless @gift_wrapping.image
      end

      def show
        @gift_wrapping = Spree::GiftWrapping.find(params[:id])
      end

      # 2013.1.3
      module StrongParameters
        private
        def gift_wrapping_params
          params.require(:gift_wrapping).permit(:description, :image_attributes, :image)
        end
      end
      include StrongParameters

      protected
      def collection
        return @collection if @collection.present?
        @collection = Spree::GiftWrapping.
          page(params[:page]).
          per(Spree::Config[:admin_products_per_page])
      end

      def load_data
#        @calculators = GiftWrapping.calculators.sort_by(&:name)
        @calculators = Spree::GiftWrapping.calculators.sort_by(&:name)
      end


    end

  end
end