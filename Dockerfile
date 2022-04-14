FROM ghcr.io/oracle/oraclelinux8-python:3.9

ARG release=19
ARG update=10

RUN dnf -y install oracle-release-el8
RUN dnf -y install oracle-instantclient${release}.${update}-basic oracle-instantclient${release}.${update}-devel 
RUN dnf -y install oracle-instantclient${release}.${update}-sqlplus 
RUN dnf -y install gcc python39-devel

RUN pip3 install cx_Oracle

RUN rm -rf /var/cache/dnf