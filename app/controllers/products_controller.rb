class ProductsController < ApplicationController
	def index
	end

	def new_subgroup
	end

	def new_group
	end

	def new_thr
	end

	def create_subgroup
	end

	def create_group
	end

	def create_thr
	end

	def new
		@product = Product.new
		@product_groups = ProductGroup.all
		@product_subgroups = ProductSubgroup.all
	end

	def create
		@product = Product.new
	end
end
