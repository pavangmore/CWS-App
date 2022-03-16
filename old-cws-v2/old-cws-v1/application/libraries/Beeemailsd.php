<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require 'vendor/autoload.php';

class Beeemailsd
{

	public function __construct()
	{

	}

	public function mail_sd($email_id, $name, $subject, $content)
	{
		$email = new \SendGrid\Mail\Mail();
		$email->setFrom("notifications@sonvanecollege.com", "CWS MIS");
		$email->setSubject($subject);
		$email->addTo($email_id, $name);
		$email->addContent(
			"text/html", $content
		);
		$sendgrid = new \SendGrid('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');
		try {
			$response = $sendgrid->send($email);
			print $response->statusCode() . "\n";
			print_r($response->headers());
			print $response->body() . "\n";
		} catch (Exception $e) {
			echo 'Caught exception: '. $e->getMessage() ."\n";
		}
	}

}
?>
