require "spec_helper"

describe Topic do 
  
  # validations 
  it {should validate_presence_of(:question)}

  it {should respond_to(:question)}
  it {should respond_to(:yt_video_id)}
  it {should respond_to(:is_complete)}
  it {should respond_to(:added_video)}
  it {should respond_to(:user_id)}


end