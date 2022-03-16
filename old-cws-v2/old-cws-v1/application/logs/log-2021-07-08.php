<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2021-07-08 07:09:20 --> Severity: Notice --> Undefined index: remember_me C:\xampp\htdocs\cws-mis\application\controllers\AuthControl.php 15
ERROR - 2021-07-08 07:09:20 --> Severity: Notice --> Undefined index: remember_me C:\xampp\htdocs\cws-mis\application\controllers\AuthControl.php 15
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:09:34 --> Severity: Notice --> Undefined index: role_id C:\xampp\htdocs\cws-mis\application\views\back\project\project_member.php 70
ERROR - 2021-07-08 07:46:20 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:49:15 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:49:30 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:50:03 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:50:03 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:50:14 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:50:14 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:50:42 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:50:42 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:52:58 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:52:58 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:53:34 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:53:34 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:54:05 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:54:22 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:54:22 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:55:03 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:55:03 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:56:46 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:57:12 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:57:48 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:58:11 --> Severity: Notice --> Undefined index: project_id C:\xampp\htdocs\cws-mis\application\controllers\ProjectControl.php 130
ERROR - 2021-07-08 07:58:11 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:58:35 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:58:36 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:58:37 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:58:37 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 07:59:10 --> 404 Page Not Found: Project/member
ERROR - 2021-07-08 08:18:44 --> Query error: Column 'project_id' in where clause is ambiguous - Invalid query: SELECT *
FROM `bee_project_member`
JOIN `bee_projects` ON `bee_projects`.`project_id`=`bee_project_member`.`project_id`
JOIN `bee_users` ON `bee_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_auth_users` ON `bee_auth_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_roles` ON `bee_roles`.`role_id`=`bee_auth_users`.`role_id`
WHERE `project_id` = 'human-dignity'
ERROR - 2021-07-08 08:18:44 --> Severity: error --> Exception: Call to a member function result_array() on bool C:\xampp\htdocs\cws-mis\application\models\ProjectModel.php 14
ERROR - 2021-07-08 08:19:21 --> Query error: Unknown column 'bee_project_memberproject_id' in 'where clause' - Invalid query: SELECT *
FROM `bee_project_member`
JOIN `bee_projects` ON `bee_projects`.`project_id`=`bee_project_member`.`project_id`
JOIN `bee_users` ON `bee_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_auth_users` ON `bee_auth_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_roles` ON `bee_roles`.`role_id`=`bee_auth_users`.`role_id`
WHERE `bee_project_memberproject_id` = 'human-dignity'
ERROR - 2021-07-08 08:19:21 --> Severity: error --> Exception: Call to a member function result_array() on bool C:\xampp\htdocs\cws-mis\application\models\ProjectModel.php 14
ERROR - 2021-07-08 09:36:49 --> Severity: Notice --> Undefined variable: project C:\xampp\htdocs\cws-mis\application\views\back\media\index.php 7
ERROR - 2021-07-08 09:42:24 --> Severity: Warning --> opendir(C:/xampp/htdocs/cws-mis/media/project/human-dignity/project,C:/xampp/htdocs/cws-mis/media/project/human-dignity/project): The system cannot find the file specified. (code: 2) C:\xampp\htdocs\cws-mis\application\controllers\MediaControl.php 22
ERROR - 2021-07-08 09:42:24 --> Severity: Warning --> opendir(C:/xampp/htdocs/cws-mis/media/project/human-dignity/project): failed to open dir: No error C:\xampp\htdocs\cws-mis\application\controllers\MediaControl.php 22
ERROR - 2021-07-08 09:42:55 --> Severity: Warning --> opendir(C:/xampp/htdocs/cws-mis/media/project/images/human-dignity/,C:/xampp/htdocs/cws-mis/media/project/images/human-dignity/): The system cannot find the path specified. (code: 3) C:\xampp\htdocs\cws-mis\application\controllers\MediaControl.php 22
ERROR - 2021-07-08 09:42:55 --> Severity: Warning --> opendir(C:/xampp/htdocs/cws-mis/media/project/images/human-dignity/): failed to open dir: No error C:\xampp\htdocs\cws-mis\application\controllers\MediaControl.php 22
ERROR - 2021-07-08 10:39:11 --> Severity: error --> Exception: FilesystemIterator::__construct(C:/xampp/htdocs/cws-mis/media/project/human-dignity/documents,C:/xampp/htdocs/cws-mis/media/project/human-dignity/documents): The system cannot find the file specified. (code: 2) C:\xampp\htdocs\cws-mis\application\helpers\bee_miscellaneous_helper.php 148
ERROR - 2021-07-08 19:01:32 --> Severity: Notice --> Undefined index: remember_me C:\xampp\htdocs\cws-mis\application\controllers\AuthControl.php 15
ERROR - 2021-07-08 19:01:32 --> Severity: Notice --> Undefined index: remember_me C:\xampp\htdocs\cws-mis\application\controllers\AuthControl.php 15
ERROR - 2021-07-08 19:29:17 --> Severity: Notice --> Undefined index: remember_me C:\xampp\htdocs\cws-mis\application\controllers\AuthControl.php 15
ERROR - 2021-07-08 19:29:17 --> Severity: Notice --> Undefined index: remember_me C:\xampp\htdocs\cws-mis\application\controllers\AuthControl.php 15
ERROR - 2021-07-08 19:41:15 --> 404 Page Not Found: Project/human-dignity
ERROR - 2021-07-08 19:42:17 --> 404 Page Not Found: Project/human-dignity
ERROR - 2021-07-08 19:45:26 --> 404 Page Not Found: Project/task
ERROR - 2021-07-08 19:45:46 --> 404 Page Not Found: ProjectControl/project_task
ERROR - 2021-07-08 19:57:08 --> Severity: Notice --> Undefined variable: project C:\xampp\htdocs\cws-mis\application\views\back\project\task\index.php 7
ERROR - 2021-07-08 20:00:55 --> Severity: Notice --> Undefined variable: bank_control_list C:\xampp\htdocs\cws-mis\application\views\back\project\task\index.php 38
ERROR - 2021-07-08 20:00:55 --> Severity: Warning --> Invalid argument supplied for foreach() C:\xampp\htdocs\cws-mis\application\views\back\project\task\index.php 38
ERROR - 2021-07-08 20:01:34 --> Severity: Notice --> Undefined variable: bank_control_list C:\xampp\htdocs\cws-mis\application\views\back\project\task\index.php 38
ERROR - 2021-07-08 20:01:34 --> Severity: Warning --> Invalid argument supplied for foreach() C:\xampp\htdocs\cws-mis\application\views\back\project\task\index.php 38
ERROR - 2021-07-08 21:07:04 --> Query error: Column 'project_id' in where clause is ambiguous - Invalid query: SELECT *
FROM `bee_project_member`
JOIN `bee_projects` ON `bee_projects`.`project_id`=`bee_project_member`.`project_id`
JOIN `bee_users` ON `bee_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_auth_users` ON `bee_auth_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_roles` ON `bee_roles`.`role_id`=`bee_auth_users`.`role_id`
WHERE `project_id` = 'human-dignity'
ERROR - 2021-07-08 21:07:04 --> Severity: error --> Exception: Call to a member function result_array() on bool C:\xampp\htdocs\cws-mis\application\models\ProjectModel.php 14
ERROR - 2021-07-08 21:07:50 --> Query error: Column 'project_id' in where clause is ambiguous - Invalid query: SELECT *
FROM `bee_project_member`
JOIN `bee_projects` ON `bee_projects`.`project_id`=`bee_project_member`.`project_id`
JOIN `bee_users` ON `bee_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_auth_users` ON `bee_auth_users`.`user_id`=`bee_project_member`.`user_id`
JOIN `bee_roles` ON `bee_roles`.`role_id`=`bee_auth_users`.`role_id`
WHERE `project_id` = 'human-dignity'
ERROR - 2021-07-08 21:07:50 --> Severity: error --> Exception: Call to a member function result_array() on bool C:\xampp\htdocs\cws-mis\application\models\ProjectModel.php 14
