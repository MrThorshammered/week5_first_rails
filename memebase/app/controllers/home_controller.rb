class HomeController < ApplicationController

	def index
		@memes = Image.all
	end

	def new
		@meme = Image.new(params['image'])
	end

	def create

		@meme = Image.new url: params['image']['url']

		 if @meme.save
      redirect_to('/')
    else
      redirect_to('home/new')
    end
  end

  def edit
  	@edit = Image.find(params['image']['url'])
  end
 
 def delete
 	@delete_image = Image.find(params['image']['url'])
 if	@delete_image.destroy
 	redirect_to('/')
 end
 end




end