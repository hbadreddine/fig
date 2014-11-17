#!/bin/sh


alias dfig="docker run -ti -v \$(pwd):/app -v /vagrant:/vagrant -v /var/run/docker.sock:/var/run/docker.sock dduportal/fig"
# start infra.
dfig up -d
sleep 5
# Load data set
dfig run dbserver psql -h dbserver -p 5432 -U postgres -f /vagrant/simple-db/comptes.sql