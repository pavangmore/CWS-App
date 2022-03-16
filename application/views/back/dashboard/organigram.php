<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Organigram</li>
		</ol>
	</nav>
	<div id="organigram">
		<div class="row mt-5">
			<div class="col-12">
				<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {packages:["orgchart"]});
					google.charts.setOnLoadCallback(drawChart);

					function drawChart() {
						var data = new google.visualization.DataTable();
						data.addColumn('string', 'Name');
						data.addColumn('string', 'Manager');
						data.addColumn('string', 'ToolTip');

						// For each orgchart box, provide the name, manager, and tooltip to show.
						data.addRows([
							[{'v':'CWS', 'f':'CWS'}, '', 'The President'],
							[{'v':'Programme', 'f':'Programme'}, 'CWS', ''],
							[{'v':'Admin & Finance', 'f':'Admin & Finance'}, 'CWS', 'VP'],

							['Human Dignity', 'Programme', ''],
							['Governance', 'Programme', ''],
							['Livelihood', 'Programme', ''],

							[{'v':'Admin', 'f':'Admin'}, 'Admin & Finance', ''],
							[{'v':'Finance', 'f':'Finance'}, 'Admin & Finance', ''],

							['BFdW', 'Human Dignity', ''],
							['ASW', 'BFdW', ''],
							['GATW', 'ASW', ''],

							['BfdW', 'Governance', ''],
							['Asw', 'BfdW', ''],
							['MNO', 'Asw', ''],

							['Bfdw', 'Livelihood', ''],
							['asw', 'Bfdw', ''],
							['Nutrition', 'asw', ''],
							['Paderu', 'Nutrition', ''],

							['HR Related', 'Admin', ''],
							['BoT Meetings', 'HR Related', ''],
							['Office Management', 'BoT Meetings', ''],

							[{'v':'Reporting', 'f':'Reporting'}, 'Finance', ''],
							[{'v':'Book Keeping', 'f':'Book Keeping'}, 'Finance', ''],
							[{'v':'Statutory Compliance', 'f':'Statutory Compliance'}, 'Finance', ''],

							['Donors', 'Reporting', ''],
							['Government', 'Donors', ''],
							['Donors', 'Government', ''],

							['Payment Processing', 'Book Keeping', ''],
							['Files/Records', 'Payment Processing', ''],
							['Fixed Assets', 'Files/Records', ''],
							['Reconciliation', 'Fixed Assets', ''],

							['Income Tax', 'Statutory Compliance', ''],
							['FCRA', 'Income Tax', ''],
							['PF/PT', 'FCRA', ''],
							['Utility Payments', 'PF/PT', ''],
						]);

						// Create the chart.
						var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
						// Draw the chart, setting the allowHtml option to true for the tooltips.
						chart.draw(data, {'allowHtml':true,"allowCollapse":true});
					}
				</script>
				<div id="chart_div"></div>

			</div>
		</div>
	</div>

</div>
