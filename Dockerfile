FROM debian:latest

RUN apt-get update && apt-get install -y \
    motion nano  curl

COPY entrypoint.sh /root/

RUN mkdir -p /var/log/motion && \
    mkdir -p /var/lib/motion && \
    touch /var/log/motion/motion.log && \
    chown -R motion:motion /var/log/motion

RUN chmod +x /root/entrypoint.sh

VOLUME ["/etc/motion"]

ENTRYPOINT ["/root/entrypoint.sh"]

