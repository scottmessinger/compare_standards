// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){

  $("#navigation").treeview({
    persist: "location",
    collapsed: true,
    unique: true
  });

  $("#browser").treeview({
    collapsed: true
  });

});
