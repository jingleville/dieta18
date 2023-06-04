class ProductGroupsController < ApplicationController
	def index
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
