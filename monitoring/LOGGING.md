# Logging and metrics

Unfortunately, we were unable to gather logging and metrics data, the reason is yet to be determined. We can still say a
thing or two on practices!

## Best practices

- Mainly those provided by [Grafana](https://grafana.com/docs/loki/latest/best-practices/) themselves.
  - Stick to static labels as long as you can.
  - Don't overuse dynamic labels.
  - Be careful of dynamic labels set by clients.
  - Cache.
  - Logs must be in increasing order of time.
  - Use chunk_size_target
  - Use `-print-config-stderr` or `-log-config-reverse-order`.
- Rotate your logs.
- Use templates.

## Worst practices

- Mounting `/var/lib` and similar, even if it is read only. You should stick to docker volumes in order not to leak log
information should the monitoring networks be compromised. It is rather surprising to see this in almost all examples by
Grafana themselves.
- Not using tags.