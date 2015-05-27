class BiosController < ApplicationController
    respond_to :html, :js
    before_action :authenticate_user!, except: [:index, :show]
  def index
    @bios = Bio.all
    @bio = Bio.new
    # @featured = Bio.find(9)
  end

  def new
    @bio = Bio.new

  end

  def create
    @bio = Bio.new(bio_params)
    if @bio.save
      redirect_to bios_path
    else
      render 'new'
    end
  end

  def edit
    @bio = Bio.friendly.find(params[:id])
  end

  def update
    @bios = Bio.all
    @bio = Bio.friendly.find(params[:id])
    if @bio.update(bio_params)
      redirect_to bios_path
    else
      redirect_to :edit
    end
  end

  def show
    @bio = Bio.friendly.find(params[:id])

    logger.debug(@bio.skill1)

    dribbble = #Dribbble::Player.find('Current360').shots( :per_page => 2 ) +
                Dribbble::Player.find('DonovanSears').shots( :per_page => 2 ) +
                Dribbble::Player.find('JimDeweese').shots( :per_page => 2 ) +
                Dribbble::Player.find('JRodd32').shots( :per_page => 1 )

    #@pictures = InstagramPictureMaker.new(instagram).pictures #+ DribbblePictureMaker.new(dribbble).pictures
    @pictures = DribbblePictureMaker.new(dribbble).pictures

    @blogs = Blog.where(author: 8).limit(4)
  end

  def update_featured
    @selected = Bio.where(:id => params[:id])
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @bio = Bio.friendly.find(params[:id]).destroy
    redirect_to bios_url
  end

  private
    def bio_params
      params.require(:bio).permit(:first_name, :last_name, :real_title, :funny_title,
                                  :question1, :question2, :question3, :question4, :question5,
                                  :answer1, :answer2, :answer3, :answer4, :answer5, :bio_pic,
                                  :overview, :large_bio_pic, :skill1, :skill2, :skill3, :skill4,
                                  :skill5, :skill1_value, :skill2_value, :skill3_value, :skill4_value,
                                  :skill5_value, :order, :mobile_bg)
    end
end
