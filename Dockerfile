FROM tmp-oracle-database-instance

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

USER oracle

ENV ORACLE_HOME /home/oracle/product/oracle_home
ENV ORACLE_SID orcl

WORKDIR $ORACLE_HOME

ADD files/listener.ora.tmpl network/admin/listener.ora.tmpl
ADD files/startup.sh .

CMD sh startup.sh && tail -f startup.log
