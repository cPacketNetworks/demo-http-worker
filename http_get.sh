while true
  do
    echo -n `date -R`
    curl -s -o /dev/null -w ": From: %{local_ip}, To: %{remote_ip}, Response Time: %{time_connect}, Code: %{response_code}\n" $URL
  sleep 1
done
