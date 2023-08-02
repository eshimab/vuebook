---
title: Hacking Chiko's
---




## Chikos Search HTMl

link: http://songs.chikostavern.com/

```html
<!doctype html>
<head>
    <title>Chiko's Tavern Song Search</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport" />
	<link href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" rel="stylesheet" type="text/css" />
	<script src="http://code.jquery.com/jquery-1.6.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script><script>
      $( '#searchPage' ).live('pageinit', function(event) {
        console.log('init');
        $("#form").submit(function() {
          $.mobile.showPageLoadingMsg();	
          
          $.getJSON("search.php?q=" + $("#search")[0].value, function(data) {
              $("#list").empty();
              if(data.length <= 0) {
                $("#list").append("<li>No Results Found</li>");
              } else {
                for(var i = 0; i < data.length; i++) {
                  $("#list").append("<li>" + data[i].value + " - " + data[i].name + "</li>");
                }
              } 
              $("#list").listview('refresh'); 
              $.mobile.hidePageLoadingMsg();	
              $("#search").blur();
          });
          return false;
        });
      });

  </script>
</style>
</head>
<body>
<div data-role="page" data-add-back-btn="true" id="searchPage">
<div style="margin:auto">
<center> <img src="chikossongsearch.png"></center>
</div>

<div data-role="content">
    <div class="content-primary"> 
        <div>
        <form action="form.php" data-ajax="false" id="form" method="post">
          <input type="search" name="search" id="search" value="" placeholder="Enter Search Here"/>
        </form>
        </div>
        <br><br> 
        <ul data-role="listview" id="list">
        </ul>
    </div>
</div>

<div>
<ul>
	<li><b>When searching by artist name, please enter either first or last name.</b><ul><li>Example: for Elvis Presley, enter either "Elvis" or "Presley"</li></ul></li></ul>
</body>
```