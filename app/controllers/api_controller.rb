class ApiController < ApplicationController
	def get_subgroups
		group = ProductGroup.find(params[:group_id])
		@subgroups = group.product_subgroups
    respond_to do |format|
      format.json { render json: @subgroups }
    end
	end

  def product_search
    if params[:subgroup].present? && params[:subgroup].strip != ""
      @courses = Course.where("location_id = ?", params[:location])
    else
      @courses = Course.all
    end
  end

	def get_products
		subgroup = ProductSubgroup.find(params[:subgroup_id])
		@products = subgroup.products
    respond_to do |format|
      format.json { render json: @products }
    end
	end
end
