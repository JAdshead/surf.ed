class TopicsController < ApplicationController
  
  load_and_authorize_resource :except => [:save_video]

  def index 
    @topics_suggest = Topic.fuzzy_search params[:query]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topics_suggest.pluck(:question) }
    end
  end

  def upload
    video = params[:topic][:added_video]
    @topic = Topic.new(params[:topic])
    @topic.user = current_user
    @topic.save
    if video == "1"
      if @topic.save
         @upload_info = Topic.token_form(params[:topic], save_video_new_topic_url(:topic_id => @topic.id))
      else
        respond_to do |format|
          format.html { render "/topics/new" }
        end
      end
    else 
      @topic.update_attributes(:is_complete => true)
      @topic.save
      redirect_to @topic, :notice => "Question has been"
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
    redirect_to @topic, :notice => "video successfully uploaded"
  end

  def show
    @answer = Answer.new
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

  def destroy
    @topic = Topic.find(params[:id])
    User.update_score(current_user)
    if Topic.delete_video(@topic)
      flash[:notice] = "Question successfully deleted"
    else
      flash[:error] = "Question unsuccessfully deleted"
    end
    redirect_to root_path
  end

  def vote_up

    @topic = Topic.find params[:id]
    current_user.vote_for(@topic)
    @topic.score += 1
    @topic.fans << current_user

    User.invitaion_update(@topic.user)
    User.update_score(@topic.user)

    @topic.save

    redirect_to @topic

  end

end
