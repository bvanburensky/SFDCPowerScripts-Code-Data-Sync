 



$aReplace = @()
$aReplace += @{from = "',United States'"; to = "',US'"; }
$aReplace += @{from = "',USA'"; to = "',US'"; }
$aReplace += @{from = "',United Stattes'"; to = "',US'"; }

$aReplace += @{from = "'Maryland,US'"; to = "'MD,US'"; }
$aReplace += @{from = "'New York,US'"; to = "'NY,US';" }
$aReplace += @{from = "'California,US'"; to = "'CA,US'"; }
$aReplace += @{from = "'Oregon,US'"; to = "'OR,US'"; }
$aReplace += @{from = "'Ohio,US'"; to = "'OH,US'"; }
$aReplace += @{from = "'Texas,US'"; to = "'TX,US'"; }
$aReplace += @{from = "'Washington,US'"; to = "'WA,US'"; }
$aReplace += @{from = "'Colorado,US'"; to = "'CO,US'"; }
$aReplace += @{from = "'Florida,US'"; to = "'OH,US'"; }
$aReplace += @{from = "'Illinois,US'"; to = "'IL,US'"; }
$aReplace += @{from = "'Missouri,US'"; to = "'MO,US'"; }
$aReplace += @{from = "'Nevada,US'"; to = "'NV,US'"; }
$aReplace += @{from = "'New Mexico,US'"; to = "'NM,US'"; }
$aReplace += @{from = "'Pennsylvania,US'"; to = "'PA,US'"; }
$aReplace += @{from = "'Wisconsin,US'"; to = "'WI,US'"; }

 
$aReplace += @{from = "'UT,84131'"; to = "'UT,US'"; }
$aReplace += @{from = "'Alabama,US'"; to = "'AL,US'"; }
$aReplace += @{from = "'Alabama,US'"; to = "'AL,US'"; }
$aReplace += @{from = "'Alabama,US'"; to = "'AL,US'"; }



$aReplace += @{from = "',,PR'"; to = "',PR,US'"; }
$aReplace += @{from = "',PR,PR'"; to = "',PR,US'"; }
$aReplace += @{from = "',,Puerto Rico'"; to = "',PR,US'"; }
$aReplace += @{from = "',PR,Puerto Rico'"; to = "',PR,US'"; }
$aReplace += @{from = "',Catano,PR'"; to = "',PR,US'"; }
$aReplace += @{from = "',San Juan,PR'"; to = "',PR,US'"; }
$aReplace += @{from = "',San Juan,Puerto Rico'"; to = "',PR,US'"; }

$aReplace += @{from = "',VI,U.S.V.I.'"; to = "',VI,US'"; }



$aReplace += @{from = "',,GU'"; to = "',GU,US'"; }
$aReplace += @{from = "',GU,GU'"; to = "',GU,US'"; }
$aReplace += @{from = "',Guam,GU'"; to = "',GU,US'"; }
$aReplace += @{from = "',GU,USatemala'"; to = "',GU,US'"; }
$aReplace += @{from = "',Guam,USatemala'"; to = "',GU,US'"; }



$aReplace += @{from = "',American Samoa,US'"; to = "',AS,US'"; }
$aReplace += @{from = "',AS,American Samoa'"; to = "',AS,US'"; }
$aReplace += @{from = "',Faga'alu, American Samoa,American Samoa'"; to = "',AS,US'"; }



$aReplace += @{from = "',Canada'"; to = "',CA'"; }
$aReplace += @{from = "',Ontario,CA'"; to = "',ON,CA'"; }
$aReplace += @{from = "',Quebec,CA'"; to = "',QC,CA'"; }
$aReplace += @{from = "',Qu�bec,CA'"; to = "',QC,CA'"; }
$aReplace += @{from = "',NVT,CA'"; to = "',NT,CA'"; }
$aReplace += @{from = "',NVT,CA'"; to = "',NT,CA'"; }
$aReplace += @{from = "',PEI,CA'"; to = "',PE,CA'"; }
$aReplace += @{from = "',NE,CA'"; to = "',NL,CA'"; }
$aReplace += @{from = "',OH,CA'"; to = "',ON,CA'"; }
$aReplace += @{from = "',AB,US'"; to = "',AB,CA'"; }
 

$aReplace += @{from = "',,Greece'"; to = "',,GR'"; }

$aReplace += @{from = "',,Guatemala'"; to = "',,GT'"; }

$aReplace += @{from = "',,FRANCE'"; to = "',,FR'"; }


$aReplace += @{from = "',,FRENCH GUIANA'"; to = "',,GF'"; }
$aReplace += @{from = "',,Finland'"; to = "',,FI'"; }

$aReplace += @{from = "',St. Lucia,LC'"; to = "',,LC'"; }



$aReplace += @{from = "',Germany,DE'"; to = "',,DE'"; }
$aReplace += @{from = "',,GERMANY'"; to = "',,DE'"; }
$aReplace += @{from = "',GERMANY'"; to = "',DE'"; }
$aReplace += @{from = "',AE,DE'"; to = "',,DE'"; }
$aReplace += @{from = "',DE,DE'"; to = "',,DE'"; }

$aReplace += @{from = "',,DENMARK'"; to = "',,DK'"; }
$aReplace += @{from = "',Vedbaek,DK'"; to = "',,DK'"; }


$aReplace += @{from = "',,El Salvador'"; to = "',,SV'"; }

$aReplace += @{from = "',,Barbados'"; to = "',,BB'"; }
$aReplace += @{from = "',,BB - West Indies'"; to = "',,BB'"; }
$aReplace += @{from = "',,Botswana'"; to = "',,BW'"; }

$aReplace += @{from = "',MA,BM'"; to = "',,BM'"; }


$aReplace += @{from = "',,China'"; to = "',,CH'"; }
$aReplace += @{from = "',China'"; to = "',CH'"; }
$aReplace += @{from = "',,Hong Kong'"; to = "',HK,CN'"; }
$aReplace += @{from = "',,HK'"; to = "',HK,CN'"; }
$aReplace += @{from = "',N/A,HK'"; to = "',HK,CN'"; }
$aReplace += @{from = "',N/A,Hong Kong'"; to = "',HK,CN'"; }
$aReplace += @{from = "',Meyrin,CH'"; to = "',,CH'"; }
$aReplace += @{from = "',HK,CN'"; to = "',91,CN'"; }
$aReplace += @{from = "',Liaoning,CN'"; to = "',21,CN'"; }
$aReplace += @{from = "',Liaoning,CN'"; to = "',21,CN'"; }
$aReplace += @{from = "',,Macau'"; to = "',92,CN'"; }

$aReplace += @{from = "',N/A,CN'"; to = "',,CN'"; }
$aReplace += @{from = "',N/A,CH'"; to = "',,CN'"; }
$aReplace += @{from = "',,Cina'"; to = "',,CN'"; }


 

$aReplace += @{from = "',ITALY'"; to = "',IT'"; }
$aReplace += @{from = "',Catania,IT'"; to = "',,IT'"; }
$aReplace += @{from = "',MI,IT'"; to = "',,IT'"; }


$aReplace += @{from = "',,Ireland'"; to = "',,IE'"; }
$aReplace += @{from = "',,Lithuania'"; to = "',,LT'"; }

$aReplace += @{from = "',,Qatar'"; to = "',,QA'"; }
$aReplace += @{from = "',,SPAIN'"; to = "',,ES'"; }

$aReplace += @{from = "',,Saudi Arabia'"; to = "',,SA'"; }
$aReplace += @{from = "',,SAUDIA ARABIA'"; to = "',,SA'"; }
$aReplace += @{from = "',Kingdom of Saudi Arabia'"; to = "',SA'"; }
$aReplace += @{from = "',KSA,SA'"; to = "',,SA'"; }
$aReplace += @{from = "',Saudi Arabia - MBC#10,SA'"; to = "',,SA'"; }
$aReplace += @{from = "',KSA,SA'"; to = "',,SA'"; }
$aReplace += @{from = "',,KSA'"; to = "',,SA'"; }

 

$aReplace += @{from = "',,Singapore'"; to = "',,CH'"; }
$aReplace += @{from = "',Singapore,Singapore'"; to = "',,CH'"; }

$aReplace += @{from = "',,SWITZERLAND'"; to = "',,CH'"; }
$aReplace += @{from = "',Vaud,SWITZERLAND'"; to = "',,CH'"; }
 
$aReplace += @{from = "',,United Arab Emirates'"; to = "',,AE'"; }

$aReplace += @{from = "',United Kingdom'"; to = "',GB'"; }
$aReplace += @{from = "',GREAT BRITAIN'"; to = "',GB'"; }
$aReplace += @{from = "',,GB'"; to = "',,GB'"; } 
$aReplace += @{from = "',Surrey,GB'"; to = "',,GB'"; }
$aReplace += @{from = "',Hampshire,GB'"; to = "',,GB'"; }
$aReplace += @{from = "',Kent,GB'"; to = "',,GB'"; }
$aReplace += @{from = "',Merseyside,GB'"; to = "',,GB'"; }
$aReplace += @{from = "',West Midlands,GB'"; to = "',,GB'"; }

$aReplace += @{from = "',Surrey,GB'"; to = "',,GB'"; }
$aReplace += @{from = "',Tyne + Wear,GB'"; to = "',,GB'"; }
$aReplace += @{from = "',Tyne + Wear,GB'"; to = "',,GB'"; }



$aReplace += @{from = "',,Uganda'"; to = "',,UG'"; }


$aReplace += @{from = "',Berkshire,GB'"; to = "',,GB'"; }
$aReplace += @{from = "',,NOTHERN IRELAND'"; to = "',,GB'"; }

$aReplace += @{from = "',,Sint-Maarten'"; to = "',,MF'"; }

$aReplace += @{from = "',,Algeria'"; to = "',,DZ'"; }
$aReplace += @{from = "',,Singapore'"; to = "',,SG'"; }


$aReplace += @{from = "',,Brasil'"; to = "',,BR'"; }
$aReplace += @{from = "',,Brazil'"; to = "',,BR'"; }
$aReplace += @{from = "',Brasil'"; to = "',BR'"; }
$aReplace += @{from = "',Brazil'"; to = "',BR'"; }
$aReplace += @{from = "',Sao Paulo,BR'"; to = "',SP,BR'"; }
$aReplace += @{from = "',Minas Gerais,BR'"; to = "',MG,BR'"; }
$aReplace += @{from = "',Sao Paulo,BR'"; to = "',SP,BR'"; }
$aReplace += @{from = "',,San José'"; to = "',,BR'"; }



$aReplace += @{from = "',Argentina,AR'"; to = "',,AR'"; }
$aReplace += @{from = "',Buenos Aires,AR'"; to = "',,AR'"; }
$aReplace += @{from = "',,Argentina'"; to = "',,AR'"; }
$aReplace += @{from = "',CABA,Argentina'"; to = "',,AR'"; }
 


$aReplace += @{from = "',AUstralia'"; to = "',AU'"; }
$aReplace += @{from = "',Australia'"; to = "',AU'"; }
$aReplace += @{from = "',Australia,AU'"; to = "',,AU'"; }
$aReplace += @{from = "',AU,AU'"; to = "',,AU'"; }
$aReplace += @{from = "',ACT,AU'"; to = "',ACT,AU'"; }
$aReplace += @{from = "',New South Wales,AU'"; to = "',NSW,AU'"; }
$aReplace += @{from = "',Queensland,AU'"; to = "',QLD,AU'"; }
$aReplace += @{from = "',VI,AU'"; to = "',VIC,AU'"; }
$aReplace += @{from = "',Western Australia,AU'"; to = "',WA,AU'"; }
$aReplace += @{from = "',NSW,AU'"; to = "',NSW,AU'"; }
$aReplace += @{from = "',NSW,AU'"; to = "',NSW,AU'"; }
$aReplace += @{from = "',,Western Australia'"; to = "',WA,AU'"; }



$aReplace += @{from = "',,Aruba'"; to = "',,AW'"; }
$aReplace += @{from = "',,Aruba - Dutch Caribbean'"; to = "',,AW'"; }
$aReplace += @{from = "',,AW - Dutch Caribbean'"; to = "',,AW'"; }
 
$aReplace += @{from = "',Colombia'"; to = "',CO'"; }
$aReplace += @{from = "',Bogotá D.C.,CO'"; to = "',,CO'"; }

 
 
$aReplace += @{from = "',La Uruca,Costa Rica'"; to = "',,CR'"; }
 
$aReplace += @{from = "',,Costa Rica'"; to = "',,CR'"; }
$aReplace += @{from = "',,Croatia'"; to = "',,HR'"; }
$aReplace += @{from = "',,Czeck Republic'"; to = "',,CZ'"; }
$aReplace += @{from = "',,Czech Republic'"; to = "',,CZ'"; }

$aReplace += @{from = "',NB,CAN'"; to = "',NB,CA'"; }


$aReplace += @{from = "',BELGIUM'"; to = "',BE'"; }
$aReplace += @{from = "',AUSTRIA'"; to = "',AT'"; }
$aReplace += @{from = "',,BAHRAIN'"; to = "',,BH'"; }
$aReplace += @{from = "',Flanders,BE'"; to = "',,BE'"; }
$aReplace += @{from = "',,AUSTRIA'"; to = "',AT'"; }
$aReplace += @{from = "',,ICELAND'"; to = "',,IS'"; }

$aReplace += @{from = "',,Jamaica'"; to = "',,JM'"; }


$aReplace += @{from = "',India'"; to = "',IN'"; }
$aReplace += @{from = "',INdia'"; to = "',IN'"; }
$aReplace += @{from = "',Bhiwandi,IN'"; to = "',,IN'"; }

$aReplace += @{from = "',Uttar Pradesh,IN'"; to = "',UP,IN'"; }

$aReplace += @{from = "',Maharashtra,IN'"; to = "',MH,IN'"; }



$aReplace += @{from = "',,Istanbul'"; to = "',,TR'"; }
$aReplace += @{from = "',Turkey'"; to = "',TR'"; }
$aReplace += @{from = "',AE,TR'"; to = "',,TR'"; }


$aReplace += @{from = "',iran,Iran'"; to = "',,IR'"; }
 



$aReplace += @{from = "',,ISRAEL'"; to = "',,IL'"; }
$aReplace += @{from = "',,Indonesia'"; to = "',,ID'"; }
$aReplace += @{from = "',,LUXEMBOURG'"; to = "',,LU'"; }
 

$aReplace += @{from = "',Cayman Islands'"; to = "',KY'"; }
$aReplace += @{from = "',Grand Cayman,KY'"; to = "',,KY'"; }
$aReplace += @{from = "',Grand Cayman,KY'"; to = "',,KY'"; }
$aReplace += @{from = "',,Chile'"; to = "',,CL'"; }



$aReplace += @{from = "',Kanagawa-Ken,JP'"; to = "',,JP'"; }
$aReplace += @{from = "',,JP'"; to = "',,JP'"; }
$aReplace += @{from = "',,Japan'"; to = "',,JP'"; }
$aReplace += @{from = "',Japan,Japan'"; to = "',,JP'"; }
 
$aReplace += @{from = "',Japan,Japan'"; to = "',,JP'"; }

$aReplace += @{from = "',,Taiwan (R.O.C.)'"; to = "',,TW'"; }
$aReplace += @{from = "',,TW (R.O.C.)'"; to = "',,TW'"; }
$aReplace += @{from = "',,Taiwan'"; to = "',,TW'"; }

$aReplace += @{from = "',,Thailand'"; to = "',,TH'"; }
$aReplace += @{from = "',N/A,Thailand'"; to = "',,TH'"; }


$aReplace += @{from = "',,South Korea'"; to = "',,KR'"; }
$aReplace += @{from = "',,Republic of Korea'"; to = "',,KR'"; }
$aReplace += @{from = "',,Korea'"; to = "',,KR'"; }




$aReplace += @{from = "'México'"; to = "'Mexico'"; }
$aReplace += @{from = "',México'"; to = "',MX'"; }
$aReplace += @{from = "',Mexico'"; to = "',MX'"; }
$aReplace += @{from = "',MEX'"; to = "',MX'"; }

$aReplace += @{from = "',Baja California,México'"; to = "',BC,MX'"; }
$aReplace += @{from = "',Baja California,Mexico'"; to = "',BC,MX'"; }
$aReplace += @{from = "',Baja California,MX'"; to = "',BC,MX'"; }
$aReplace += @{from = "',Distrito Federal,MX'"; to = "',DF,MX'"; }
$aReplace += @{from = "',Distrito Federal Mexico,MX'"; to = "',DF,MX'"; }
$aReplace += @{from = "',Edo,MX'"; to = "',,MX'"; }
$aReplace += @{from = "',Chihuahua,MX'"; to = "',CH,MX'"; }
$aReplace += @{from = "',Jal,MX'"; to = "',JA,MX'"; }
$aReplace += @{from = "',Jalisco,MX'"; to = "',JA,MX'"; }
$aReplace += @{from = "',B.C.,MX'"; to = "',BC,MX'"; }
$aReplace += @{from = "',San Luis Potosí,MX'"; to = "',SL,MX'"; }
 
$aReplace += @{from = "',MX,MX'"; to = "',,MX'"; }

$aReplace += @{from = "',Malaysia,Malaysia'"; to = "',,MY'"; }
$aReplace += @{from = "',,Malaysia'"; to = "',,MY'"; }

$aReplace += @{from = "',,MARTINIQUE'"; to = "',,MQ'"; }




$aReplace += @{from = "',,NETHERLANDS'"; to = "',,NE'"; }
$aReplace += @{from = "',,Nepal'"; to = "',,NP'"; }

$aReplace += @{from = "',,Russia'"; to = "',,RU'"; }

$aReplace += @{from = "',,REUNION'"; to = "',,RU'"; }



$aReplace += @{from = "',,SWEDEN'"; to = "',,SE'"; }



$aReplace += @{from = "',Netherland Antilles'"; to = "',AN'"; }
$aReplace += @{from = "',,Curaçau'"; to = "',,AN'"; }
$aReplace += @{from = "',Netherland Antilles'"; to = "',AN'"; }
$aReplace += @{from = "',Curacao,AN'"; to = "',,AN'"; }



$aReplace += @{from = "',Norway'"; to = "',NO'"; }

$aReplace += @{from = "',New Zealand'"; to = "',NZ'"; }
$aReplace += @{from = "',Otago,NZ'"; to = "',,NZ'"; }


$aReplace += @{from = "',,Philippines'"; to = "',,PH'"; }
$aReplace += @{from = "',,Peru'"; to = "',,PE'"; }
$aReplace += @{from = "',,Poland'"; to = "',,PL'"; }
$aReplace += @{from = "',,Portugal'"; to = "',,PT'"; }

$aReplace += @{from = "',,South Africa'"; to = "',,ZA'"; }
$aReplace += @{from = "',,ZA.'"; to = "',,ZA'"; }

$aReplace += @{from = "'State_Province__c'"; to = "'Address__StateCode__s'"; }
$aReplace += @{from = "'Country__c'"; to = "'Address__CountryCode__s'"; }


return $aReplace
 

