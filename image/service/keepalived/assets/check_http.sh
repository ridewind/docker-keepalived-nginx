#!/bin/bash
HTTP_CODE=`curl -I -m 10 -o /dev/null -s -w %{http_code} 127.0.0.1`

if [ $HTTP_CODE -eq 200 ]; then
        RETURN=0
else
        RETURN=1
fi

exit $RETURN