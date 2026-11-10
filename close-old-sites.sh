#!/bin/sh
# Stops OLD copies of the recipe sites on ports 8000, 8123, 5050, 5100 and 7777 (Kitchen Quest uses 9137).
for p in 8000 8123 5050 5100 7777; do
  pids=$(lsof -ti tcp:$p -sTCP:LISTEN 2>/dev/null)
  if [ -n "$pids" ]; then echo "port $p: stopping process $pids"; kill $pids; fi
done
echo "Done. Now start Kitchen Quest with ./start.sh"
