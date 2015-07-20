FROM sameersbn/gitlab:7.12.2-2

ADD entrypoint-wrapper.sh /sbin/entrypoint-wrapper.sh

RUN chmod +x /sbin/entrypoint-wrapper.sh

ENTRYPOINT ["/sbin/entrypoint-wrapper.sh"]