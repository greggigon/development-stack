FROM htdvisser/taiga-back:stable

ADD local.py /tmp/local.py

RUN pip install taiga-contrib-ldap-auth && rm -rf /usr/local/taiga/taiga-back/settings/local.py \
	&& mv /tmp/local.py /usr/local/taiga/taiga-back/settings/