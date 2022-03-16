<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'AuthControl';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['check-authentication'] = 'AuthControl/check_authentication';
$route['logout'] = 'AuthControl/logout';
$route['verification-email/resend'] = 'AuthControl/verification_email_resend';
$route['activate/account/(:any)'] = 'AuthControl/activate_account/$1';
$route['activation/(:any)'] = 'AuthControl/activation/$1';


$route['dashboard'] = 'DashControl/index';
$route['organigram'] = 'DashControl/organigram';

$route['report/general'] = 'ReportControl/report_general';
$route['report/general/generate/(:any)'] = 'ReportControl/report_general_generate/$1';
$route['report/hr'] = 'ReportControl/report_hr';
$route['report/finance'] = 'ReportControl/report_finance';

$route['role-and-permission'] = 'SettingControl/role_permission';
$route['roles'] = 'SettingControl/roles';
$route['role/save'] = 'SettingControl/role_save';
$route['role/delete'] = 'SettingControl/role_delete';
$route['role/permission/update'] = 'SettingControl/role_permission_update';

$route['email'] = 'SettingControl/email';
$route['email/create-template'] = 'SettingControl/email_create_template';
$route['email/save-template'] = 'SettingControl/email_save_template';
$route['email/edit-template/(:any)'] = 'SettingControl/email_edit_template/$1';
$route['email/update-template'] = 'SettingControl/email_update_template';

$route['modules'] = 'SettingControl/modules';
$route['module/save'] = 'SettingControl/module_save';
$route['module/update'] = 'SettingControl/module_update';
$route['module/sub-module/(:any)'] = 'SettingControl/module_sub_module/$1';
$route['module/sub_module/save'] = 'SettingControl/module_sub_module_save';

$route['system/defaults'] = 'SettingControl/system_defaults';
$route['system/defaults/email'] = 'SettingControl/system_defaults_email';
$route['system/defaults/email/update'] = 'SettingControl/system_defaults_email_update';
$route['system/defaults/language'] = 'SettingControl/system_defaults_language';
$route['system/defaults/language/update'] = 'SettingControl/system_defaults_language_update';

$route['appearance'] = 'SettingControl/appearance';
$route['appearance/update-logo'] = 'SettingControl/appearance_update_logo';
$route['appearance/update-favicon'] = 'SettingControl/appearance_update_favicon';
$route['appearance/header-footer-update'] = 'SettingControl/appearance_header_footer_update';

$route['help'] = 'HelpControl/index';
$route['help/pages'] = 'HelpControl/pages';
$route['geo-chart'] = 'HelpControl/geo_chart';

$route['bank/bank-control-sheet'] = 'BankControl/bank_control_sheet';
$route['bank/salary-summary'] = 'BankControl/salary_summary';
$route['bank/vehicle-insurance'] = 'BankControl/vehicle_insurance';
$route['bank/rent-tracker'] = 'BankControl/rent_tracker';

$route['my-profile'] = 'UserControl/user_profile';
$route['users/manage'] = 'UserControl/user_manage';
$route['user/add'] = 'UserControl/user_add';
$route['user/save'] = 'UserControl/user_save';
$route['user/edit/id/(:num)'] = 'UserControl/user_edit/$1';
$route['user/update'] = 'UserControl/user_update';
$route['user/profile/update'] = 'UserControl/user_profile_update';
$route['update/password'] = 'UserControl/password_update';
$route['users/assign'] = 'UserControl/user_assign';
$route['user/role/assign'] = 'UserControl/user_role_assign';
$route['user/role/assign/save'] = 'UserControl/user_role_assign_save';
$route['user/activate-deactivate'] = 'UserControl/user_activate_deactivate';
$route['user/status/update'] = 'UserControl/user_status_update';
$route['users/permission'] = 'UserControl/user_permission';
$route['user/permission/id/(:any)'] = 'UserControl/user_permission_by_id/$1';
$route['user/permission/update'] = 'UserControl/user_permission_update';


$route['theme/human-dignity'] = 'ThemeControl/human_dignity';


$route['project'] = 'ProjectControl/project';
$route['project/create'] = 'ProjectControl/project_create';

//Form Routs
$route['forms'] = 'FormControl/forms';
$route['form/save/(:any)'] = 'FormControl/form_save/$1';
$route['form/view/(:any)'] = 'FormControl/form_view/$1';
$route['form/custom/domestic_violence'] = 'FormControl/custom_form_domestic_violence';
$route['form/responses/(:any)'] = 'FormControl/form_responses/$1';
$route['form/settings'] = 'FormControl/form_settings';
$route['form/design'] = 'FormControl/form_design';
$route['form/design/save'] = 'FormControl/form_design_save';
$route['form/view-fields/(:any)'] = 'FormControl/form_view_fields/$1';
$route['form/field/save'] = 'FormControl/form_field_save';



$route['notification'] = 'NotificationControl/notification';


//Project Control
$route['project/save'] = 'ProjectControl/project_save';
$route['project/id/(:any)'] = 'ProjectControl/project_view/$1';
$route['project/member/project-id/(:any)'] = 'ProjectControl/project_member_id/$1';
$route['project/member/update'] = 'ProjectControl/project_member_update';
$route['project/member/remove/(:any)/(:any)'] = 'ProjectControl/project_member_remove/$1/$2';
$route['project/task/(:any)'] = 'ProjectControl/project_task/$1';
$route['project/task-save'] = 'ProjectControl/project_task_save';

//Media Control
$route['media/(:any)/(:any)/(:any)'] = 'MediaControl/media/$1/$2/$3';

//API Routes
$route['api/user/(:any)'] = 'ApiControl/get_user/$1';
$route['api/project/(:any)'] = 'ApiControl/get_project/$1';
$route['api/project/task/(:any)/(:any)'] = 'ApiControl/get_project_task/$1/$2';
