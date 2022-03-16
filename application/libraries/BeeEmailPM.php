<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'vendor/autoload.php';

class BeeEmailPM {

	public function __construct()
	{

	}

	public function mail_pm($email_id,$name,$subject,$content){
		$mail = new PHPMailer(true);

		try {
			//Server settings
			$mail->SMTPDebug = 2;                      //Enable verbose debug output
			$mail->isSMTP();                                            //Send using SMTP
			$mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
			$mail->SMTPAuth   = true;                                   //Enable SMTP authentication
			$mail->Username   = 'shai.umb.mail@gmail.com';                     //SMTP username
			$mail->Password   = '$hai@pi007';                               //SMTP password
			$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         //Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
			$mail->Port       = 587;

			//Recipients
			$mail->setFrom('shai.umb.mail@gmail.com', 'beeAdmin');
			$mail->addAddress($email_id, $name);     //Add a recipient


			//Content
			$mail->isHTML(true);                                  //Set email format to HTML
			$mail->Subject = $subject;
			$mail->Body    = $content;

			$mail->send();
		} catch (Exception $e) {
			write_file('log/email/email_error_'.date("YmdHis").".txt", $mail->ErrorInfo);
		}
	}
}

?>
