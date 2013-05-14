$(document).ready(function() {
  $('form').on("submit",function(event){
    event.preventDefault();
    $.ajax({
      type: 'get',
      data: $(this).serialize(),
      url: '/word'
    }).done(function(response){
      $('#anagrams').html(response).hide();
      $('#anagrams').slideToggle();
    });
  })
});
