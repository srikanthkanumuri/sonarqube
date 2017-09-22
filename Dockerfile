FROM sonarqube:5.6.6
MAINTAINER SrikanthKanumuri "srikanth.kanumuri@gmail.com"
RUN \
	# remove bundled plugins
	ls -la /opt/sonarqube/extensions/plugins \
	&& rm -rf /opt/sonarqube/extensions/plugins/*.jar

COPY ./plugins/*.jar /opt/sonarqube/extensions/plugins/