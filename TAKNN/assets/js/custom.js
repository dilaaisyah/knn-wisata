$(document).ready(function(){
  $('#carousel-question .item input[type="radio"]').click(function(){
    var size = $('#carousel-question .item.active input[type="radio"]:checked').size();
    console.log('size '+size);
    if(size==10){
      $('#carousel-question .item.active .submit-button').css('opacity', 0)
                                                         .slideDown(500)
                                                         .animate(
                                                            { opacity: 1 },
                                                            { queue: false, duration: 'slow' }
                                                         )
    }
  });  

  $('#carousel-question .item .next-button').click(function(){
    $('#carousel-question').carousel("next");
    $('html,body').animate({
      scrollTop:$('#carousel-question').offset().top}, 'slow');
  });
  
  //EQUAL HEIGHT
  var tallest = 0;
  $(window).on("load", function(){
    if ($(window).width() >  767 ) {
      $(".eqHeight").each(function() {
        var thisHeight = $(this).innerHeight();
        if(thisHeight > tallest) {
          tallest = thisHeight;
        }
      });
      $(".eqHeight").innerHeight(tallest);
    }
  });

  //POPUP
  $(".fancybox").fancybox({
      openEffect  : 'fade',
      closeEffect : 'fade',
      helpers : {
        title : {
          type : 'inside'
        }
    }
  });

});