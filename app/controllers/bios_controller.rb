class BiosController < ApplicationController
    respond_to :html, :js
    before_action :authenticate_user!, except: [:index, :show]
  def index
    @bios = Bio.all.order(:order)
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

    # CURRENT TEAM MEMBER DRIBBLE PROFILE NAMES
                # Current360 Team Profile - Current360
                # Arica - aljohnson
                # Chaney - chaneygiven
                # Dennis - DBonifer
                # Jim - JimDeweese
                # Donovan - DonovanSears
    # BIO IS AN ARTIST SO GET THEIR DRIBBLE SHOTS
    artist = @bio.artist
    logger.debug("Artist is: #{artist}")
    if artist == 'yes'
      dribbble = Dribbble::Player.find(@bio.dribbble).shots( :per_page => 5 )
      @pictures = DribbblePictureMaker.new(dribbble).pictures
    else
    # BIO IS NOT AN ARTIST SO LONG INSTAGRAM
      instagram = Instagram.user_recent_media("4641505", {:count => 5})
      @pictures = InstagramPictureMaker.new(instagram).pictures
    end

    # LOAD BLOGS RELATED TO THAT BIO
    @blogs = Blog.where(author: @bio.id).limit(4)
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
                                  :skill5_value, :order, :mobile_bg, :dribbble, :artist)
    end
end
