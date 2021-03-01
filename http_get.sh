#!/bin/bash
DEV="eth0"

if [[ -n "${TC_LOSS}" ]]; then
  echo "tc_loss.sh eth0  ...causes drops on egress of eth0"
  tc qdisc add dev "$DEV" root netem loss random "$TC_LOSS"
fi

if [[ -n "${TC_DELAY}" ]]; then
  echo "tc_delay.sh eth0  ...causes delays on egress of eth0"
  tc qdisc add dev "$DEV" root netem delay "$TC_DELAY"
fi

while true
  do
    echo -n `date -R`
    curl -s -o /dev/null -w ": From: %{local_ip}, To: %{remote_ip}, Response Time: %{time_connect}, Code: %{response_code}\n" $URL
  sleep 1
done
