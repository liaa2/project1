// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require activestorage
//= require_tree .
//= require popper
//= require bootstrap

$(document).ready(function () {

  $('#addForm').on('submit', function () {
    if( $('#list_id').val() === "-1" ){
      $('#selectWarning').show().fadeOut(1000);
      return false;
    }
  });

  $('#list_id')
  .on('change', function () {
    if ($(this).val() === "other") {
      $("select, .listControl").hide()
      $("#otherList").show()
    }
  })

  // $("#addList").on("click", function (){
  //   // let listName = $("#newList").val()
  //   $.ajax({
  //     type: "POST",
  //     url: "/profile",
  //     data: {"name": $("#newList").val()},
  //     dataType: "json",
  //     success: function(data){
  //       console.log(data);
  //     }
  //   })
  // })

});
