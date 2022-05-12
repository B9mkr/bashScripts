#! /bin/bash

start_date=`date`
echo "start stopwatch ($start_date)"

echo "Enter \"Enter\" to stop stopwatch"
time read

end_date=`date`
echo "end stopwatch ($start_date)"
#say "End stopwatch"
#notify-send "End stopwatch"

