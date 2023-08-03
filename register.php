<?php
require 'conn.php';

// check if the account with that email exists.
if ($stmt = $con->prepare('SELECT id FROM tblpatientsdetails WHERE email = ?')) {
	
    $stmt->bind_param('s', $_POST['email']);
	$stmt->execute();
	$stmt->store_result();
	// Store the result so we can check if the account exists in the database.
	if ($stmt->num_rows > 0) {
		// Username already exists
		echo 'Email already exists';
	} else {
		// Insert new account
        // email doesn't exists, insert new account
        //create a patient ref number
        $patientRefNo = uniqid();
        if ($stmt = $con->prepare('INSERT INTO tblpatientsdetails (telephone, dateOfBirth, address, county, subCounty, email, gender, 
        maritalStatus, kinName, kinDOB, kinIdNo, kinGender, kinRelationship, kinTelephone, patientRef) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)')) {
            
            $stmt->bind_param('sssssssssssssss', $_POST['tel'] , $_POST['name'], $_POST['dob'], $_POST['address'], $_POST['county'], $_POST['subcounty'], $_POST['email'], $_POST['gender'], $_POST['maritalstatus'], $_POST['kinname'], $_POST['kindob'], $_POST['kingender'], $_POST['kinrelationship'], $_POST['kintel'], $patientRefNo);
            $stmt->execute();
            
            //send mail
            // $from    = 'noreply@localhost.com';
            // $subject = 'Patient Reference Id';
            // $headers = 'From: ' . $from . "\r\n" . 'Reply-To: ' . $from . "\r\n" . 'X-Mailer: PHP/' . phpversion() . "\r\n" . 'MIME-Version: 1.0' . "\r\n" . 'Content-Type: text/html; charset=UTF-8' . "\r\n";
            // // Update the activation variable below
            // $message = '<p>Your reference Id is ' .$patientRefNo . '</p>';
            // mail($_POST['email'], $subject, $message, $headers);
            echo 'Please check your email for your patient reference id! \n <b>Your reference Id is ' .$patientRefNo . '</b> \n <p> I cannot send an email due to lack of a domain. Implementation of the mail function is commented in the code';

        } else {
            echo 'Could not prepare statement!';
        }
	}
	$stmt->close();
} else {
	// Something is wrong with the SQL statement.
	echo 'Could not prepare statement!';
}
$con->close();
?>


?>