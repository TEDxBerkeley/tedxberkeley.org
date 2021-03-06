class TeamMembersController < ApplicationController
  load_and_authorize_resource
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  def new
  end

  def create
    @member = TeamMember.new team_member_params
    if @member.save
      redirect_to @member
    else
      render 'new'
    end
  end

  def destroy
    member = TeamMember.find(params[:id])
    member.destroy
    redirect_to team_members_path
  end

  def edit
    @member = TeamMember.find(params[:id])
  end

  def index
    @members = TeamMember.all
  end

  def show
    @member = TeamMember.find(params[:id])
  end

  def update
    @member = TeamMember.find(params[:id])
    if @member.update_attributes(team_member_params)
      redirect_to @member
    else
      render 'edit'
    end
  end

  def team_member_params
    params.require(:team_member).permit(
      :bio,
      :photo_url,
      :name,
      :role,
    )
  end

  private

    def set_s3_direct_post
        @s3_direct_post = S3_BUCKET.presigned_post(key: "team/#{SecureRandom.uuid}_${filename}", success_action_status: '201', acl: 'public-read')
    end
end
