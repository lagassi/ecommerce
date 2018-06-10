<?php 

namespace Hcode\Pagseguro;


class Config {

	const SANDBOX = true;

	const SANDBOX_EMAIL = "wilhan_cross@hotmail.com";
	const PRODUCTION_EMAIL = "wilhan_cross@hotmail.com";


	const SANDBOX_TOKEN = "8703097925AC46FB82E6DE70CB3F069C";
	const PRODUCTION_TOKEN = "745F2487F4BD463EA8A44BAF7ED14D49";

	const SANBOX_SESSION = "https://ws.sandbox.pagseguro.uol.com.br/v2/sessions";
	const PRODUCTION_SESSION = "https://ws.pagseguro.uol.com.br/v2/sessions";

	const SANBOX_URL_JS = "https://stc.sandbox.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.directpayment.js";
	const PRODUCTION_URL_JS = "https://stc.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.directpayment.js";

	public static function getAutchentication():array 
	{

		if (Config::SANDBOX === true)
		{

			return[
				"email"=>Config::SANDBOX_EMAIL,
				"token"=>Config::SANDBOX_TOKEN
			];
		} else {

			return[
				"email"=>Config::PRODUCTION_EMAIL,
				"token"=>Config::PRODUCTION_TOKEN
			];			
		}
	}

	public static function getUrlSessions():string
	{

		return (Config::SANDBOX === true) ? Config::SANBOX_SESSION : Config::PRODUCTION_SESSION;

	}

	public static function getUrlJS()
	{
		return (Config::SANDBOX === true) ? Config::SANBOX_URL_JS : Config::PRODUCTION_URL_JS;
	}





}
?>