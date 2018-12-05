
var index = 0;
var counter = 0;
var arr = []; 

$(document).ready(function() {
  $(".button-collapse").sideNav();
  $('.modal').modal();
  $("#get-data").click(function(){ //load JSON data...
    counter++;
    $("#welcome").fadeOut(200);
    $(".loading").show();
     $.getJSON("api.php", //gets a JSON data from api.php
        function(data,status){     //callback function if request succeeds

          arr = data; //put data into global array
          
          function sliceData() {
            var newArr = arr.records.slice(index, + index+10);
            return newArr;
          }
          if (counter >= 1) {
            arr.records = sliceData(); //allow first 10 records to load, then call the sliceData function. set global array to sliced array
          };
          index += 10;
       $.each(arr.records, function(i,record){
        

          
          $(".ajax-loader").append("<div class='tile "+record.genre+" all'><img src='"+record.image+"' class='album' alt='"+record.artist+"'><div class='desc'><a href='#modal"+record.id+"' class='modal-trigger infobtn'><b>&#9432</b></a><div id='modal"+record.id+"' class='modal'><div class='modal-content'><img src='"+record.image+"' class='modal-album' alt='"+record.artist+"'><div class='modal-desc'><h4>"+record.artist+"</h4><p>"+record.album+"</p><br /><span>"+record.year+"</span><br /><br /><a  class='thumb_up' id='thumb_up"+record.id+"'><i class='material-icons'>thumb_up</i></a><span class='votes' id='votes-for-"+record.id+"'>"+record.vote+"</span></div><div class='modal-footer'><a href='#' id='delete-modal"+record.id+"' class='delete'><span>Delete</span><a href='#!'' class='modal-action modal-close waves-effect waves-green btn-flat'>Close</a></div></div></div></div>").fadeIn(500); //appends data from json file to the element with class name of ".ajax-loader"
          
          
          
          if ( i == 10 ) {
            return false;
          }

          
          
          $('.modal').modal();
          $(".vote").click(function(){}); 
          $(".loading").hide();
          // Delete 
          $('#delete-modal'+record.id).click(function(){
            var conf = confirm('Are you sure you want to delete this record?');
            if (conf) {
              var el = this;
              var id = arr.records[i].id; // AJAX Request
              $.ajax({
                 url: 'delete.php',
                 type: 'POST',
                 data: { id },
                 success: function(response){

                  // Removing record from HTML
                  
                  $(el).closest('.tile').fadeOut(800, function(){ 
                   $(this).remove();
                  });
                  $('#modal'+arr.records[i].id).modal('close');
                  alert("Record deleted!");
               }
            });
          } else {
            return false;
            $('#modal'+arr.records[i].id).modal('close');
          }
    
        });
        $('#thumb_up'+record.id).click(function(){
          var el = this;
          var id = record.id;
          
          $.ajax({
            url: 'vote.php',
            type: 'POST',
            data: { id },
            success: function(data){
              $('#votes-for-'+id).hide().html(data).fadeIn(500);
              $('#thumb_up'+record.id).removeClass('thumb_up');
              $('#thumb_up'+record.id).addClass('thumb_up_disabled');
            }
          })
        })
        

        });
      });
    });
  $('#submit').click(function(){
          var artist = $('#artist').val();
          var album = $('#album_title').val();
          var yr = $('#year').val();
          var imageURL = $('#image_url').val();
          console.log(artist, album, yr, imageURL);
          $.ajax({
            url: 'insert.php',
            type: 'POST',
            data: {artist, album, yr, imageURL},
            success: function(data){
              alert("record has been added!");
              $('.ajax-loader').append(data);
            },
            error: function(response){
              console.log('error!');
            }
          });
        });
//filtering
var selectedClass = "";
$(".fil-cat").click(function(){

  selectedClass = $(this).attr("data-rel"); 
  $(".ajax-loader div").not("."+selectedClass).fadeOut();
  $(".ajax-loader").fadeTo(100, 0.1);
  
  setTimeout(function() {
    $("."+selectedClass).fadeIn();
    $(".desc").fadeIn();
    $(".ajax-loader").fadeTo(300, 1);
  }, 300);
    $(".infobtn").click(function(){
      $(".modal-content").css("display", "block");
      $(".modal-desc").css("display", "block");
      $(".modal-footer").css("display", "block");
    }) 
  console.log(selectedClass);

});
  });


