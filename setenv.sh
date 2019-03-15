#!/bin/sh

cat $WERCKER_ROOT/kubernetes_deploy.template.yml \
 | sed "s^medrec_image^$OCIR_REGISTRY\/$OCIR_REPOSITORY^g" \
 | sed "s^ocirsecretname^$OCIR_SECRET^g" \
 > $WERCKER_ROOT/kubernetes_deployment.yml