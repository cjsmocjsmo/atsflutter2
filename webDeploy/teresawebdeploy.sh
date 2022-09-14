#!/bin/sh

rm -rf $HOME/atsflutterWebDeploy

mkdir $HOME/atsflutterWebDeploy

mkdir $HOME/atsflutterWebDeploy/atsflutter/;

cp -pvr $HOME/atsflutter/webDeploy/Dockerfile $HOME/atsflutterWebDeploy/;
cp -pvr $HOME/atsflutter/webDeploy/atsechoserver.go $HOME/atsflutterWebDeploy/;
cp -pvr $HOME/atsflutter/webDeploy/go.mod $HOME/atsflutterWebDeploy/;
cp -pvr $HOME/atsflutter/webDeploy/go.sum $HOME/atsflutterWebDeploy/;

# cp -pvr $HOME/atsflutter/webDeploy/my-httpd.conf $HOME/atsflutterWebDeploy/;

flutter clean && flutter build web;

cp -pvr $HOME/atsflutter/build/web/* $HOME/atsflutterWebDeploy/atsflutter/;

cd $HOME/atsflutterWebDeploy;

docker build -t gcr.io/atsflutter001/atsflutter:0.1.0 .;

docker save gcr.io/atsflutter001/atsflutter:0.1.0 | gzip > atsflutter-0.1.0.tar.gz

scp $HOME/atsflutterWebDeploy/atsflutter-0.1.0.tar.gz charliepi@192.168.0.90:/home/charliepi/
