FROM tmp-oracle-db-instance

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

USER oracle

ENV ORACLE_HOME /home/oracle/product/oracle_home
ENV ORACLE_SID orcl

WORKDIR $ORACLE_HOME

ADD listener.ora.tmpl network/admin/listener.ora.tmpl
ADD startup.sh .

CMD sh startup.sh
