var uploadTypes = ['Send a Photo', 'Send a Letter', 'Send a Cat Meme', 'Send an Attachment', 'Send Anthrax']
var i=0;
function LoopText () {
   setTimeout(function () {
      $('#type-of-file').text(uploadTypes[i]).fadeIn("slow");
      i++;
      if (i <= uploadTypes.length) {
        LoopText();
        if (i == uploadTypes.length){
          i = 0;
        }
      }
   }, 1500)
}

$(document).ready(function() {  
    $('#first').hide().css("visibility", "visible").delay(1000).fadeIn("slow");
    $('#second').hide().css("visibility", "visible").delay(2000).fadeIn("slow");
    $('#third').hide().css("visibility", "visible").delay(3000).fadeIn("slow");
    $('#last').hide().delay(4000).fadeIn("slow");
    LoopText();
         
    $('#upload').click(function() {
    	$('#upload').css({'background': '#3ca3d7','box-shadow': 'none', 'z-index': '10000'});
      $('#upload').text('Uploaded');
      $('#postcard-image').addClass('animated fadeOutUp')
      $('#helper-text').text('');
      // do fading 3 times
      for(i=0;i<100;i++) {
      	$("#upload").css('background-color', "#88c7e7");
        // $('#upload').fadeTo('slow', 0.3).fadeTo('slow', 0.5);
      }

      $('#letter-form').hide().css("display", "block").delay(500).fadeIn("slow");
      $('html, body').animate({
          scrollTop: $("#letter-form").offset().top
      }, 1000);
      $('#penguin_flyout').addClass('animated fadeInLeftBig')

    })

    $('#upload_hidden').click(function() {
      $('#upload').css({'background': '#3ca3d7','box-shadow': 'none', 'z-index': '10000'});
      $('#upload_hidden').change(function(){
        $('#upload').text('Uploaded');
        $("#upload").css('background-color', "#88c7e7");
        $('#postcard-image').addClass('animated fadeOutUp')
        $('#helper-text').text('');
        $('#letter-form').hide().css("display", "block").delay(500).fadeIn("slow");
        $('html, body').animate({
            scrollTop: $("#letter-form").offset().top
        }, 1000);
        $('#penguin_flyout').addClass('animated fadeInLeftBig')
      })
    })

});