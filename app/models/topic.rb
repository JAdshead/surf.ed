class Topic < ActiveRecord::Base
  
  belongs_to :user
  has_many :answers, :dependent => :destroy

  attr_accessible :question, :yt_video_id, :is_complete, :added_video, :user_id

  scope :completes,   where(:is_complete => true)
  scope :incompletes, where(:is_complete => false)

  def self.yt_session
    @yt_session ||= YouTubeIt::Client.new(:username => YouTubeITConfig.username , :password => YouTubeITConfig.password , :dev_key => YouTubeITConfig.dev_key)    
  end

  def self.delete_video(video)
    yt_session.video_delete(video.yt_video_id)
    video.destroy
      rescue
        video.destroy
  end

  def self.update_video(topic, params)
    if topic.added_video
      yt_session.video_update(topic.yt_video_id, video_options(params))
      topic.update_attributes(params)
    else
      topic.update_attributes(params)
    end
  end

  def self.token_form(params, nexturl)
    yt_session.upload_token(video_options(params), nexturl)
  end

  def self.delete_incomplete_videos
    self.incompletes.map{|r| r.destroy}
  end

  private
    def self.video_options(params)
      opts = {:title => params[:question],
             :description => "A Surf.ed video",
             :category => "Sports",
             :keywords => ["surfing"]}
      params[:is_unpublished] == "1" ? opts.merge(:private => "true") : opts
    end
      
end