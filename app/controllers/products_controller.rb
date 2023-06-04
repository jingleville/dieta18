class ProductsController < ApplicationController
	def index
	end

	def new_subgroup
	end

	def new_group
	end

	def new_thermal_range
	end

	def create_subgroup
	end

	def create_group
	end

	def create_thermal_range
	end

	def new
		@product = Product.new
		@product_groups = ProductGroup.all
		@product_subgroups = ProductSubgroup.all
		@temperature_range = TemperatureRange.all
	end

	def create
		render plain: params[:group]
		@product = Product.new
	end

  private
    def product_params
      params.require(:product).permit(:name, :code)
      params.require(:subgroup).permit(:id)
    end
end
