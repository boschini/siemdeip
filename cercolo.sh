grep -E 'wget|curl' siss*/*/2018/12/*access*1212*.log | grep -v 'curl/7.'
grep --color -iE 'whoami|cd+%2f|cd%20|/tmp|base64' siss*/*/2018/12/*access*1212*.log



grep --color -iE 'whoami|cd\+%2f/|cd%20/|/tmp|base64|wget\+|curl\+' siss*/*/2018/12/*access*1212*.log 

grep -i --color -E "/(uploads?|images|includes?)/.*\.(php|jsp).*HTTP/1\.[01]\" 200 " *
