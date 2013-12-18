// 2. This code loads the IFrame Player API code asynchronously.
var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// 3. This function creates an <iframe> (and YouTube player)
//    after the API code downloads.
var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    width: widthCheck(),
    height: (widthCheck())*0.65,
    videoId: topic.yt_video_id,
  });
}


function widthCheck() {
  var w = $(window).width()

  if (w <= "960"){
    width = 480
  }
  else {
    width = w*0.68
  };
  return width
}
