rm -rf /home/pipi/atsflutterWebDeploy;

mkdir /home/pipi/atsflutterWebDeploy;

mkdir /home/pipi/atsflutterWebDeploy/atsflutter/;

# cp -pvr /home/pipi/atsflutter/webDeploy/docker-compose.yml /home/pipi/atsflutterWebDeploy/;

cp -pvr /home/pipi/atsflutter/webDeploy/Dockerfile /home/pipi/atsflutterWebDeploy/;

# cp -pvr /home/pipi/atsflutter/webDeploy/my-httpd.conf /home/pipi/atsflutterWebDeploy/;

cp -pvr /home/pipi/firebase_options.dart /home/pipi/atsflutter/lib/;

flutter clean && flutter build web;

cp -pvr /home/pipi/atsflutter/build/web/* /home/pipi/atsflutterWebDeploy/atsflutter/;

cd /home/pipi/atsflutterWebDeploy;

docker build -t gcr.io/atsflutter001/atsflutter:0.0.5 .;

docker save gcr.io/atsflutter001/atsflutter:0.0.5 | gzip > atsflutter-0.0.5.tar.gz

docker run -p 80:80 gcr.io/atsflutter001/atsflutter:0.0.5;

