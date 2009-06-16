// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//

jQuery(function() {
  $("#click_me").click(function() {
    $("#text").html("Javascript rocks!");
    return false;
  });
});
