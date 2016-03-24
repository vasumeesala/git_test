class CampaignsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show] 
  before_filter :require_permission, only: [:edit, :destroy]
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if (params[:tag])

     
      @campaigns= Campaign.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page =>6)
      @tagged = true
      respond_with(@campaigns)
      
    else
      @campaigns = Campaign.all.paginate(:page => params[:page], :per_page =>6)
      @tagged = false
      respond_with(@campaigns)
      
    end
    
  end

  def show
    respond_with(@campaign)
  end

  def new

    respond_with(@campaign)
  end

  def edit
    
  end
  
  def create

    @campaign = Campaign.new(campaign_params)
    @campaign.user_id = current_user.id
    @campaign.save
    respond_with(@campaign)
  end

  def update
    @campaign.update(campaign_params)
    respond_with(@campaign)

  end

  def destroy
    @campaign.destroy
    respond_with(@campaign)
  end
  def require_permission
    if (current_user.id != Campaign.find(params[:id]).user_id)
      flash[:notice] = "You dont have permission to edit / delete"
      redirect_to campaign_path
    end
  end
  def tagged_view?
        @tagged
  end
  def current_user?(user_id)
    if current_user.nil?
      false
    else
      user_id == current_user.id 
    end

  end

  helper_method :tagged_view?, :current_user?
  
  private
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    def campaign_params
      params.require(:campaign).permit(:campaign_name, :campaign_description, :reward, :tnc, :campaign_startdate, :campaign_enddate, :tags, :campimg, :tag_list, :page,:key)
    end
end
