FROM amazonlinux:latest
RUN yum install git -y 
RUN git clone https://github.com/dineshbabu9212/4_eos-cloud-config-repo.git /etc/eos-cloud-config-repo/
ADD target/server-0.0.1-RELEASE.jar eos-cloud-config-api.jar
CMD ["java","-jar","eos-cloud-config-api.jar"]