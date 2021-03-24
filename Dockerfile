FROM ubuntu
 
ADD ./lib ./lib
ADD ./haarcascades ./haarcascades
ADD ./target/fatjar-0.0.1-SNAPSHOT.jar ./target/app.jar

EXPOSE 8080

RUN apt-get update
RUN apt-get install -y openjdk-8-jre
#RUN ["mvn", "install:install-file", "-Dfile=./lib/opencv-3410.jar", "-DgroupId=org.opencv", "-DartifactId=opencv", "-Dversion=3.4.10", "-Dpackaging=jar"]
CMD ["java", "-Djava.library.path=lib/ubuntuupperthan18/", "-jar", "target/app.jar"]

