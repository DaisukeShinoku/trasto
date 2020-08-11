// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

import 'bulma/css/bulma.min.css';
import '../stylesheets/application';
import "@fortawesome/fontawesome-free/js/all";

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(function() {
  $('.slide-parent').slick({
      dots: true,
      autoplay: true,
      autoplaySpeed: 4000,
  });
});

$(function(){
  // #back-to-topを消す
  $("#back-to-top").hide();

  // スクロールが十分された時に#back-to-topを表示。スクロールされたら非表示
  $(window).scroll(function(){
    // this(window要素)がどれだけスクロールしたかをscrollTop()を使って値を取る
    $('#pos').text($(this).scrollTop());
    if ($(this).scrollTop() > 60){
      $("#back-to-top").fadeIn();
    }else{
      $('#back-to-top').fadeOut();
    }

  });

  //#back-to-topがクリックされたら上に戻る
  // animateメソッドを使用
  $('#back-to-top a').click(function() {
      $('html, body').animate({
          scrollTop:0
      }, 800);
      return false;
  });

});

$(function(){

  //#back-to-btmがクリックされたら下に戻る
  // animateメソッドを使用
  $('#back-to-btm a').click(function() {
      $('html, body').animate({
        scrollTop:$(document).height() - this.scrollTop() - this.height()
      }, 800);
      return false;
  });

});