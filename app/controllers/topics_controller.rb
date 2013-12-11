class TopicsController < ApplicationController
  
  load_and_authorize_resource :except => [:save_video]

  def upload
    @topic = Topic.new(params[:topic])
    @topic.user = current_user
    @topic.save
    if @topic.save
       @upload_info = Topic.token_form(params[:topic], save_video_new_topic_url(:topic_id => @topic.id))
    else
      respond_to do |format|
        format.html { render "/topics/new" }
      end
    end
  end


  def save_video
    @topic = Topic.find(params[:topic_id])

    if params[:status].to_i == 200
      @topic.update_attributes(:yt_video_id => params[:id].to_s, :is_complete => true)
      Topic.delete_incomplete_videos
    else
      Topic.delete_video(@topic)
    end
    redirect_to topics_path, :notice => "video successfully uploaded"
  end

  def edit
  end
  
  def update
    @topic     = Topic.find(params[:id])
    @result    = Topic.update_video(@topic, params[:topic])
    respond_to do |format|
      format.html do
        if @result
          redirect_to @topic, :notice => "Question successfully updated"
        else
          respond_to do |format|
            format.html { render "/videos/_edit" }
          end
        end
      end
    end
  end

end
