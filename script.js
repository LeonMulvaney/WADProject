
/* Home Page Image - Opacity from 0.8 - 1.0 on hover and vice versa*/
$(document).ready(function(){
	$('.subjectsHomeImg').mouseenter(function(){
		$(this).fadeTo('Slow',1);
	});	
});

$(document).ready(function(){
	$('.subjectsHomeImg').mouseleave(function(){
		$(this).fadeTo('Slow',0.8);
	});	
});

/*Subjects Image Fade-in on hover*/

$(document).ready(function(){
	$('.subjectsImg').mouseenter(function(){
		$(this).fadeTo('Slow',1);
	});	
});

$(document).ready(function(){
	$('.subjectsImg').mouseleave(function(){
		$(this).fadeTo('Slow',0.8);
	});	
});


/* Sample JQuery to change image background on hover --> Not correct unless image roundness defined

$(document).ready(function(){
	$('.aboutHomeImg').mouseenter(function(){
		$(this).css('background','#696969');	
	});
});

$(document).ready(function(){
	$('.aboutHomeImg').mouseleave(function(){
		$(this).css('background','#FFFFFF');	
	});
});
*/


/*Smooth Scrolling ---- Source = https://css-tricks.com/snippets/jquery/smooth-scrolling/ */
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
}); 

/*
function loadDoc(){
    
    document.getElementById('test').innerHTML = "This text has been written to the page!" + "<br />" + "Welcome go the Geography Section!";
}
*?

/*Get info from XML */


//User Login Function
/*function getData(){
        var XMLHttpRequestObject = false;

        if (window.XMLHttpRequest) {
            XMLHttpRequestObject = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            XMLHttpRequestObject =
              new ActiveXObject("Microsoft.XMLHTTP");
        }
        function getData(datasource, testDiv) {
            if (XMLHttpRequestObject) {
                var obj = document.getElementById("testDiv");
                XMLHttpRequestObject.open("GET", subjects.xml, true);
                XMLHttpRequestObject.onreadystatechange = function () {
                    if (XMLHttpRequestObject.readyState == 4 
                     && XMLHttpRequestObject.status == 200) {
                        obj.innerHTML = 
                        XMLHttpRequestObject.responseText;
                    }
                }
                XMLHttpRequestObject.send(null);
            }
        }

    
}*/
          /*  var XMLHttpRequestObject = false;
                if(window.XMLHttpRequest){
                    XMLHttpRequestObject = new XMLHttpRequest();
                }
                else if (window.ActiveXObject){
                    XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
                }
                
                function getData(datasource,divID){
                    if(XMLHttpRequestObject){
                        var obj = document.getElementById("testDiv");
                        XMLHttpRequestObject.open("GET","geography.php",true);
                        XMLHttpRequestObject.onreadystatechange = 
                        function(){
                            if (XMLHttpRequestObject.readyState==4 && XMLHttpRequestObject.status==200){
                                obj.innerHTML=XMLHttpRequestObject.responseText;
                            }
                        }
                        XMLHttpRequestObject.send(null);
                    }
                }*/
             /*   $(document).ready(function(){
                    $("#geo").click(function(){
    $("#testDiv").load("geography.php");
  });
});*/

/*function ajaxRequest(){
   $.ajax({
	type: "GET", 
	url: "geography.php",
	success: function(data){
		if (data.success == true) {
			// form message success
			$('#testDiv').html(data);
		} else {
			// form processing failed
			alert(data.errorMessage);
		}
	}, 
	error: function(data){
		alert('A problem occurred sending the message! Sorry!!');
	}
   });
}*/

function loadGeoData(){
    
$.ajax({
  url: "geography.php"
}).done(function(data) { // data what is sent back by the php page
  $('#testDiv').html(data); // display data
});
}

function loadMathsData(){
    
$.ajax({
  url: "maths.php"
}).done(function(data) { // data what is sent back by the php page
  $('#testDiv').html(data); // display data
});
}

function loadDCGData(){
    
$.ajax({
  url: "DCG.php"
}).done(function(data) { // data what is sent back by the php page
  $('#testDiv').html(data); // display data
});
}

/* Fade the page on load - Src= http://bradsknutson.com/blog/display-loading-image-while-page-loads/ */
$(window).load(function() {
	$(".loader").fadeOut("slow");
})

function submitConfirm(){

    alert("Thanks for your submission, your details shall be added to our database and we shall email you shortly!");
}
