#FROM xxxxxxx.dkr.ecr.cn-northwest-1.amazonaws.com.cn/openjdk-18/openjdk18-rhel:1.0
#COPY target/spring-boot-angular-ecommerce-0.0.1-SNAPSHOT.jar /deployments/root.jar
FROM registry.redhat.io/redhat-openjdk-18/openjdk18-openshift:1.15-7.1693227984
ADD http://10.220.65.29:9090/jars/spring-boot-angular-ecommerce-0.0.1-SNAPSHOT.jar /deployments/root.jar
USER root
RUN chown jboss: /deployments/root.jar & chmod 664 /deployments/root.jar
USER jboss
#ENV JAVA_ARGS /deployments/root.jar
#CMD java -jar $JAVA_ARGS
