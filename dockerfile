FROM odoo:15.0

#RUN pip3 install inotify

USER root

RUN  rm -r  /usr/lib/python3/dist-packages/odoo/addons/*  && chmod -R o+rX /mnt/extra-addons  && cd /var/lib/odoo && chown odoo:odoo . 

COPY ./addons /usr/lib/python3/dist-packages/odoo/addons/

EXPOSE 8069
