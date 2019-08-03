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
//= require popper
//= require bootstrap-sprockets

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
    // $(this).parents('.frm-outer-container').find('#open_form').show();
    $('.frm-outer-container').find('#close').hide();
    $('input[type=checkbox]').removeAttr('checked');

});


 $(document).on("change", 'input[type="checkbox"]', function(){
    if($(this).is(":not(:checked)")) {
        $(this).parents('.frm-outer-container').find('#open_form').show();
        $(this).parents('.frm-outer-container').find('#close').hide()

        // $(this).is("#open_form").hide();
        // $(this).is("#close").show();
    } else {
        $(this).parents('.frm-outer-container').find('#close').show();
        $(this).parents('.frm-outer-container').find('#open_form').hide();

        // $(this).is("#close").hide();
        // $(this).is("#open_form").show();
    }
  })

  $(document).on("submit", function(){
    if(('#open_form').find('.opening_time') === null || ('#open_form').find('.closing_time') === null) {
        alert("Vous devez entrer une heure d'ouverture et de fermeture ou clickez sur 'fermé toute la journée' ")
    }
  })



