class ProfilesController < InheritedResources::Base
  before_action :set_post, only:[:show, :edit, :update, :destroy,
:delete_image, :id, :image_id]


def delete_image
  @image = ActiveStorage::Attachment.find(params[:id])
  @image.purge
  redirect_to post_path(@post)
  end

  private

    def profile_params
      params.require(:profile).permit(:title, :content, images: [])
    end

end
