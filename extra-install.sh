#!/bin/bash
set -ex

# Enables and configures elasticsearch index
bash /extra-install/ElasticSearch.sh

# Creates an OAuth consumer for quickstatements
bash /extra-install/QuickStatements.sh

cp /files/dissco* /var/www/html/images/
cp /files/*.php /var/www/html/LocalSettings.d/

# fix bug in OpenIDConnect
bash /extra-install/OpenIDConnect.sh
