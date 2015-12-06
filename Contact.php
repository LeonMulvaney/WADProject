<!DOCTYPE html>
	<html>
		<head>
			<title>Digital Education Foundation </title>
			<meta name="viewport" content="width=device-width, initial scale=1">
			<link rel="stylesheet" href="css/bootstrap.min.css" />
			<link rel="stylesheet" href="css/style.css" />
			
	<link rel="shortcut icon" href="Images/icon.ico">			
		</head>
		<body>
			<div class="loader"></div>
			
			<div class="navbar-fixed-top navbar-inverse" id="home">
				<div class="container">
					<div class="navbar-brand">
						The Digital Education Foundation
					</div> 
					<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
						Menu
					</button>
					<div class="collapse navbar-collapse navHeaderCollapse"> 
						<ul class="nav navbar-nav navbar-right navHover">
							<li><a href="Index.html">HOME</a></li>
							<li><a href="subjects.html">SUBJECTS</a></li>														
							<li><a href="Contact.php">CONTACT</a></li>
						</ul>
					</div>
				</div>
			</div>	
		

				<div class="container lrgPadding" id="top">
					<h3 class="text-center">Our offices are located in SCR1...</h3>
					<h4 class="text-center">(Depending on room availability)</h4>					
					<div class=" row medPadding">
						<div class="col-md-12 text-center smlPadding"> 
							<iframe id="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2381.696478593726!2d-6.245314384161456!3d53.348689279979524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48670e8cd86e97e7%3A0x6d51b774ee7fa935!2sNational+College+of+Ireland!5e0!3m2!1sen!2sie!4v1447184346882"allowfullscreen></iframe> 
						</div>	
						
					</div>
				</div>	
				
			<div class="container medPadding" id="contact">
			<h3 class="text-center"> Become a member now!</h3>
			
				<form role="form" action="Contact.php" method="post" id="signupForm">
					
					
						<label for="name">Name:</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Your name here"/>
					
					
					
						<label for="email"> Email:</label>
						<input type="email" class="form-control" id="email" name="email" placeholder="example@example.com"/>
					
					
						
						<label for="age"> Age:</label>
						<input type="age" class="form-control" id="age" name="age" placeholder="Enter you age"/>
					
					
					
						
							<button type="submit" class="btn submitButton squareBtn" onclick ="submitConfirm()">Submit</button>
						
				</form>
			</div>				
					

				<div class=" container topFooter whiteText">
					<div class=" row medPadding">
						<div class="col-md-2 text-center"> 	

						</div>					
						<div class="col-md-3 text-left"> 	
								<h4>We are constantly expanding!</h4>						
								We have planned to greatly expand the number of topics in the near future. Our team is working hard to give the best possible learning experience.
						</div>
						<div class="col-md-1 text-left"> 	

						</div>							
						<div class="col-md-1 text-left"> 	
								<h4 class="">About</h4>
								Our Mission<br />
								Who we are <br />
								Contact<br />	
								Services<br />	
								Support<br />										
								Privacy<br />									
						</div>		
						<div class="col-md-1 text-left"> 	
								<h4 class="">Subjects</h4>
								Geography <br />
								DGC <br />
								Maths<br />						
						</div>	
						<div class="col-md-1 text-left "> 	
								<h4>Connect</h4>
								<a href ="https://www.facebook.com/" class="whiteText" target="_blank">Facebook</a> <br />
								<a href="https://www.youtube.com/" class="whiteText" target="_blank">YouTube</a> <br />
								<a href="https://www.twitter.com/" class="whiteText" target="_blank">Twitter</a> <br />
								<a href="https://www.linkedin.com/" class="whiteText" target="_blank">LinkedIn</a> <br />
						</div>							
						<div class="col-md-1 text-left"> 	
								<h4>Coming Soon</h4>
								English<br />
								Irish<br />	
								Biology<br />	
								Physics<br />	
								Chemistry<br />	
								Business<br />	
								German<br />	
										
						</div>	
						<div class="col-md-12 text-center"> 	
								
						</div>							
					</div>
				</div>				

				<div class=" container bottomFooter whiteText">
					<div class=" row medPadding">
						<div class="col-md-6 text-center"> 			
							<h4><img class="smlLogo" src="Images/icon.ico" /> The Digital Education Foundation. </h4><br /> 						
						</div>
						<div class="col-md-5 text-center"> 			
							<h4> Copyright 2015 &copy; </h4></a>		
						</div>	
						<div class="col-md-1 text-right"> 			
							<a href ="#top" class="whiteText"><h4>Back to top</h4></a>		
						</div>							
					</div>
				</div>


						
			<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
			<script src="js/bootstrap.js"></script>			
			<script type="text/javascript" src="script.js"></script>
			
			<script>

			</script>
		</body>
	</html>
	
<?php

/*
 * PHP SimpleXML
 * Loading a XML from a file, adding new elements and editing elements
 */

$name = $_POST["name"];
$email = $_POST["email"];
$age = $_POST["age"];

if (file_exists('students.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('students.xml');
    
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    


    //adding new child to the xml
    $newChild = $xml->addChild("student");
    $newChild->addChild('name', $name);
    $newChild->addChild('email', $email);
    $newChild->addChild('age', $age);
    
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    
     '<pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

    //changing the nodes values
    //in this case we are changing the value 
    //of all children called <name>
    /*foreach ($xml->children() as $child)
        $child->name = $name;
        $child->email = $email;
        $child->age = $age;*/
    //displaying the element in proper format
    
} else {
    exit('Failed to open students.xml.');
}
    file_put_contents('students.xml', $xml->asXML());
    
    //writeRSS();
    function writeRSS(){
        if (file_exists('students.xml')) { 
            //loads the xml and returns a simplexml object
            $rssxml = simplexml_load_file('students.xml');
            $newChild = $rssxml->addChild('student');
            $newChild->addChild('name', $name);
            $newChild->addChild('email', $email);
            $newChild->addChild('age', $age);

            file_put_contents('students.xml', $rssxml->asXML());
        }
    }
?>