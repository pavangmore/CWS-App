<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require 'vendor/autoload.php';

class Beepdf {

	protected $pdf;

	public function __construct()
	{
		$this->pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

	}

	function writePDF($content){

		$this->pdf->SetCreator(PDF_CREATOR);
		$this->pdf->SetAuthor('beeAdmin');
		$this->pdf->SetTitle('Foundation Course Registration Details');
		$this->pdf->SetSubject('Subject');

		// set default header data
		//$this->pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
		//$this->pdf->setFooterData(array(0,64,0), array(0,64,128));

		// set header and footer fonts
		$this->pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		$this->pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

		// set default monospaced font
		$this->pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

		// set margins
		$this->pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		$this->pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		$this->pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

		// remove default header/footer
		$this->pdf->setPrintHeader(false);
		$this->pdf->setPrintFooter(false);

		// set auto page breaks
		$this->pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

		// set image scale factor
		$this->pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);


		$this->pdf->setFontSubsetting(true);
		$this->pdf->SetFont('dejavusans', '', 14, '', true);

		$this->pdf->AddPage();


		$html = <<<EOD
	$content
EOD;

		// Print text using writeHTMLCell()
		$this->pdf->writeHTMLCell(0, 0, '', '',$html, 0, 1, 0, true, '', true);

		$this->pdf->Output('reg_details.pdf', 'I');
		$this->pdf->Output('reg_details.pdf', 'S');

	}
}

?>
