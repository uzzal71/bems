<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = 'login';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


/**
** define admin routes
**/
$routes['admin'] = 'Admin';

/**
** define menu routes
**/
$route['CREATE-MENU'] = 'menu/add_menu';
$route['MENU-SAVE'] = 'menu/menu_save';
$route['MENU-LIST'] = 'menu/menu_list';
$route['MENU-EDIT/(:any)'] = 'menu/menu_edit/$1';
$route['MENU-UPDATE'] = 'menu/menu_update';
$route['MENU-DELETE/(:any)'] = 'menu/menu_delete/$1';

/**
** define user routes
**/
$route['CREATE-USER'] = 'user/create_user';
$route['USER-SAVE'] = 'user/user_save';
$route['USER-LIST'] = 'user/user_list';
$route['USER-EDIT/(:any)'] = 'user/user_edit/$1';
$route['USER-UPDATE'] = 'user/user_update';
$route['USER-DELETE/(:any)'] = 'user/user_delete/$1';

/**
** SITE MENU ROUTES
**/
$route['CREATE-SITE'] = 'site/add_site';
$route['SITE-SAVE'] = 'site/site_save';
$route['SITE-LIST'] = 'site/site_list';
$route['SITE-EDIT/(:any)'] = 'site/site_edit/$1';
$route['SITE-UPDATE/(:any)'] = 'site/site_update/$1';
$route['SITE-DELETE/(:any)'] = 'site/site_delete/$1';

/**
** DEVICE MENU ROUTES
**/
$route['CREATE-DEVICE'] = 'device/add_device';
$route['DEVICE-SAVE'] = 'device/device_save_data';
$route['DEVICE-LIST'] = 'device/device_list';
$route['DEVICE-EDIT/(:any)'] = 'device/device_edit/$1';
$route['DEVICE-UPDATE/(:any)'] = 'device/device_update/$1';
$route['DEVICE-DELETE/(:any)'] = 'device/device_delete/$1';

/**
** DATA RANGE MENU ROUTES
**/
$route['CREATE-DATA-RANGE'] = 'data_range/data_range_add';
$route['DATA-RANGE-SAVE'] = 'data_range/data_range_save';
$route['DATA-RANGE-LIST'] = 'data_range/data_range_list';
$route['DATA-RANGE-EDIT/(:any)'] = 'data_range/data_range_edit/$1';
$route['DATA-RANGE-UPDATE/(:any)'] = 'data_range/data_range_update/$1';
$route['DATA-RANGE-DELETE/(:any)'] = 'data_range/data_range_delete/$1';

/**
 * Report
 */
$route['report'] = 'Report';
$route['report-generate'] = 'Report/report_generate';
$route['alarm-report'] = 'Report/alarm_report';
$route['alarm-report-generate'] = 'Report/alarm_report_generate';

/**
 * Reset Password
 */
$route['reset-password'] = 'admin/password_reset';

/**
 * Alarm view
 */
$route['updated-data-view/(:any)'] = 'Report/updated_data_view/$1';


/**
 * Alarm History
 */
$route['alarm-history'] = 'Report/alarm_history';

/*** auto-refresh **/
$route['auto-refresh'] = 'AutoRefresh/auto_refresh_list';
$route['auto-refresh-edit/(:any)'] = 'AutoRefresh/auto_refresh_edit/$1';
$route['auto-refresh-update/(:any)'] = 'AutoRefresh/auto_refresh_update/$1';