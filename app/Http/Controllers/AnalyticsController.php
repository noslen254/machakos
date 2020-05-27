<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Khill\Lavacharts\Lavacharts;
use Spatie\Analytics\Period;
use Analytics;
use Carbon;
use Gate;


class AnalyticsController extends Controller
{



  public function analytics(){
	  if(Gate::allows('isAdmin')){
	     abort(404);
	  }
	$activeUsers=Analytics::getAnalyticsService()->data_realtime->get('ga:'.env('ANALYTICS_VIEW_ID'), 'rt:activeVisitors')->totalsForAllResults['rt:activeVisitors'];

	//Active Users
	$active = \Lava::DataTable();

	$active->addStringColumn('Type')
	      ->addNumberColumn('Value')
	      ->addRow(['Active Users', $activeUsers]);

	\Lava::GaugeChart('Active', $active, [
	    'width'      => 400,
	    'greenFrom'  => 0,
	    'greenTo'    => 69,
	    'yellowFrom' => 70,
	    'yellowTo'   => 89,
	    'redFrom'    => 90,
	    'redTo'      => 100,
	    'majorTicks' => [
	        'Safe',
	        'Critical'
	    ]
	]);


	//Top Browsers
	$browserData = Analytics::fetchTopBrowsers(Period::days(365));
	$browserResult = $browserData->toArray();
	$totalBrowerData=0;

	//Getting the total
	$keys = array_keys($browserResult);
	for($i = 0; $i < count($browserResult); $i++) {

	    $totalBrowerData+=$browserResult[$keys[$i]]['sessions'];

	}


	$topBrowsers = \Lava::DataTable();

	$topBrowsers->addStringColumn('Reasons')
	        ->addNumberColumn('Percent');

	//Displaying Graph values
	$browserResult1 = $browserData->toArray();
	$keys1 = array_keys($browserResult1);
	for($i = 0; $i < count($browserResult1); $i++) {

	 $topBrowsers->addRow([$browserResult1[$keys1[$i]]['browser'],($browserResult1[$keys1[$i]]['sessions']/$totalBrowerData)*100 ]);
	}


	\Lava::DonutChart('topBrowsers', $topBrowsers, [
	    'title' => 'Top Browsers'
	]);




	//Top Countries
	$country = Analytics::performQuery(Period::days(365),'ga:pageviews',  ['dimensions'=>'ga:country','sort'=>'-ga:pageviews']);
	$countryResult= collect($country['rows'] ?? [])->map(function (array $dateRow) {
	    return [
	        'country' =>  $dateRow[0],
	        'sessions' => (int) $dateRow[1],
	    ];
	})->toArray();


	//Getting the total
	$totalCountryData=0;
	$countryKeys = array_keys($countryResult);
	for($i = 0; $i < count($countryResult); $i++) {

	    $totalCountryData+=(int)$countryResult[$keys[$i]]['sessions'];

	}


	$topCountries = \Lava::DataTable();

	$topCountries->addStringColumn('Reasons')
	        ->addNumberColumn('Percent');

	//Displaying Graph values

	$countryKeys = array_keys($countryResult);
	for($i = 0; $i < count($countryResult); $i++) {

	 $topCountries->addRow([$countryResult[$countryKeys[$i]]['country'],($countryResult[$countryKeys[$i]]['sessions']/$totalCountryData)*100 ]);
	}

	\Lava::DonutChart('topCountries', $topCountries, [
	    'title' => 'Top Countries'
	]);



	//Countries

	$countrySessions = \Lava::DataTable();

	$countrySessions->addStringColumn('Country')
	           ->addNumberColumn('Page Views');
	for($i = 0; $i < count($countryResult); $i++) {
	$countrySessions->addRow([$countryResult[$countryKeys[$i]]['country'],$countryResult[$countryKeys[$i]]['sessions']]);
	}

	\Lava::GeoChart('countrySessions', $countrySessions);



	//visitors

	$pageViewsAndVisitors = Analytics::fetchTotalVisitorsAndPageViews(Period::days(6))->toArray();

	$visitKeys = array_keys($pageViewsAndVisitors);


	//visitors

	$pageVisitorsAnalytics = \Lava::DataTable();

	$pageVisitorsAnalytics->addDateColumn('Date')
	             ->addNumberColumn('Visitors');
	for($i = 0; $i < count($pageViewsAndVisitors); $i++) {

	    $visitors=$pageViewsAndVisitors[$visitKeys[$i]]['visitors'];
	    $date=date_format($pageViewsAndVisitors[$visitKeys[$i]]['date'],"d-m-Y");

	    $pageVisitorsAnalytics->addRow([$date, $visitors]);
	}

	\Lava::LineChart('pageVisitorsAnalytics', $pageVisitorsAnalytics, [
	    'title' => 'Web Visitors'
	]);



	//page views
	$pageVisitorsAnalytics1 = \Lava::DataTable();

	$pageVisitorsAnalytics1->addDateColumn('Date')
	             ->addNumberColumn('Page Views');
	for($i = 0; $i < count($pageViewsAndVisitors); $i++) {

	    $pageViews=$pageViewsAndVisitors[$visitKeys[$i]]['pageViews'];
	    $date=date_format($pageViewsAndVisitors[$visitKeys[$i]]['date'],"d-m-Y");

	    $pageVisitorsAnalytics1->addRow([$date, $pageViews]);
	}

	\Lava::LineChart('pageVisitorsAnalytics1', $pageVisitorsAnalytics1, [
	    'title' => 'Page Views'
	]);



   return view('analytics.analytics');
}























}
