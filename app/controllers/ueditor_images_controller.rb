class UeditorImagesController < ApplicationController
	skip_before_filter :verify_authenticity_token
    def create
      @ueditor_image = UeditorImage.new(image: params[:upfile])
      respond_to do |format|
        if @ueditor_image.save
          data = {:url=> @ueditor_image.image.url, :title => params[:title], :original => params[:upfile].original_filename, :state => 'SUCCESS'}
        else
          data = {:title => params[:title], :original => params[:upfile].original_filename, :state => 'FAIL'}
        end
        format.js {render :json => data.to_json}
      end
    end

    def product_pic
      @product_pic = ProductPic.new(image: params[:Filedata], product_id: params[:product_id])
      respond_to do |format|
        if @product_pic.save
          data = {:url=> @product_pic.image.url, :id => @product_pic.id, :state => 'SUCCESS'}
        else
          data = {:state => 'FAIL'}
        end
        # format.js {render :json => data.to_json}
        format.js {render :template => "ueditor_images/product_pic", locals: {product_pic: @product_pic}}
      end
    end

    def destroy
      @product_pic = ProductPic.find(params[:id])
      @product_pic.destroy
      respond_to do |format|
        format.js
      end
    end
end