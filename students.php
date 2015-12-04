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