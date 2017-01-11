#!/bin/sh

telegraf --config /home/fluent/telegraf.toml >>/var/log/telegraf-monitoring.log 2>&1 &

envtpl --keep-template /fluentd/etc/fluent.conf -o /tmp/fluent.conf
/usr/local/bin/consul agent -config-dir /etc/consul/conf.d >>/var/log/consul.log 2>&1 &
fluentd -c /tmp/fluent.conf -p /fluentd/plugins $FLUENTD_OPT
