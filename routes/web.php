<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();




Route::group(['middleware'=>['web','auth']],function(){
//Home controller routessendLoginResponse
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/newRedirect','HomeController@newRedirect');
Route::get('/welcomeMessage','HomeController@welcomeMessage');


//Profile Controller
Route::get('/profile','ProfileController@profile');
Route::post('/updateProfile','ProfileController@updateProfile');
Route::post('/changePassword','ProfileController@changePassword');
Route::post('/updateProfilePicture','ProfileController@updateProfilePicture');



//Users Controller
Route::get('/users','UsersController@users');
Route::post('/addAdmin','UsersController@addAdmin');
Route::post('/updateAdmin','UsersController@updateAdmin');
Route::get('/deleteUser/{user}','UsersController@deleteUser');
Route::get('/usersPDF','UsersController@usersPDF');
Route::get('/adminsCSV','UsersController@adminsCSV');
Route::get('/usersExcel','UsersController@usersExcel');
Route::get('/viewUser/{user}','UsersController@viewUser');
Route::post('/updateAdmin1','UsersController@updateAdmin1');
Route::get('/viewUser/clearAdminLog/{user}','UsersController@clearAdmninLog');



//Analytics controller
Route::get('/analytics','AnalyticsController@analytics');





//Group controller routes
Route::get('/groups','GroupController@index');
Route::post('/addNewGroup','GroupController@addNewGroup');
Route::post('/updateGroup','GroupController@updateGroup');
Route::get('/deleteGroup/{group}','GroupController@deleteGroup');
Route::get('/viewGroup/{group}','GroupController@viewGroup');

//Members controller
Route::get('/members','MembersConroller@index');
Route::post('/sortGroup','MembersConroller@sortGroup');
Route::post('/searchClient','MembersConroller@searchClient');
Route::post('/members/addClient','MembersConroller@addClient');
Route::get('/clientsExcel','MembersConroller@exportExcel');
Route::get('/clientsCSV','MembersConroller@exportCSV');
Route::get('/viewClient/{client}','MembersConroller@viewClient');
Route::patch('/members/{user}','MembersConroller@update');
Route::patch('/member/{client}','MembersConroller@updateViewClient');
Route::post('/members/addNotice','MembersConroller@addNotice');
Route::post('/members/addMessage','MembersConroller@addMessage');
Route::get('clientsPDF','MembersConroller@clientsPDF');


//Notice Controller
Route::get('/notices','NoticeController@index');
Route::post('/searchNotice','NoticeController@searchNotice');
Route::post('/addNewNotice','NoticeController@addNewNotice');
Route::get('/deleteNotice/{id}','NoticeController@deleteNotice');
Route::get('/viewNotice/{id}','NoticeController@viewNotice');
Route::get('/noticesCSV','NoticeController@exportCSV');
Route::get('/noticesExcel','NoticeController@exportExcel');
Route::get('/deleteNotice/{id}','NoticeController@deleteNotice');
Route::get('/noticesPDF','NoticeController@noticesPDF');

//Banners /Posters
Route::get('/advertisements','AdvertisementController@index');
Route::post('/advertisements/send','AdvertisementController@send');
Route::get('/exportsExcel','AdvertisementController@exportExcel');
Route::get('/exportsCSV','AdvertisementController@exportCSV');
Route::post('searchAdvert','AdvertisementController@searchAdvert');
Route::get('viewAdvert/{advertisement}','AdvertisementController@viewAdvert');
Route::get('/deleteAdvert/{id}','AdvertisementController@deleteAdvert');
Route::get('exportsPDF','AdvertisementController@exportPDF');

//Games
Route::get('/games','GameController@index');
Route::post('games/add','GameController@add');
Route::get('viewGame/{game}','GameController@view');
Route::get('exportCSV','GameController@exportCSV');
Route::get('exportExcel','GameController@exportExcel');
Route::patch('editGame/{id}','GameController@update');
Route::get('deleteGame/{id}','GameController@deleteGame');
Route::get('bookedGames','GameController@bookedGames');

//Booking Tees
//Route::post('viewGame/add','FirstTeeController@add');
Route::get('tournamentExcel','FirstTeeController@gameExcel');
Route::get('tournamentCSV','FirstTeeController@gameCSV');
Route::get('tournamentPDF','FirstTeeController@gamePDF');
Route::post('tournamentSort','FirstTeeController@gameSort');
Route::post('tournamentSearch','FirstTeeController@search');
Route::post('viewGame/add','FirstTeeController@add');
Route::get('/bookings','FirstTeeController@testingRoute');

Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
});
Route::get('/events','FirstTeeController@view');
Route::post('viewGame/add','FirstTeeController@add');
