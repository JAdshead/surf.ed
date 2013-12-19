$(function(){
  $("#new_answer").on("submit", function(e) {
    e.preventDefault(); 
    answer = $("#answer_answer").val();
    topic_id = $("#topic_id").val();
    $.ajax({
      url: "/answers",
      method: "POST",
      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
      data: {topic_id: topic_id, answer:{answer: answer}},
      success: function(data){
        $("#form-submited").html("Your answer has been submited")
      }

    })
    return false;
  })
})
