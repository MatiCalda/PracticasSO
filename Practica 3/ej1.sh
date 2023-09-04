#!/bin/bash

echo 'z' >> var-set
echo 'HOSTNAME:' $(printenv HOSTNAME) >> var-set
echo 'HOME:' $(printenv HOME) >> var-set
echo 'LOGNAME:' $(printenv LOGNAME) >> var-set
echo 'PATH' $(printenv PATH) >> var-set

#TODO: ordenar
