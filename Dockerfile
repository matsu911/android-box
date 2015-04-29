FROM jacekmarchwicki/android:java7
MAINTAINER Olivier Tabone <olivier.tabone@ripplemotion.fr>

ADD android-update.exp /tmp/

RUN set -x \
   && expect -f /tmp/android-update.exp android-21,android-22,tool,platform-tool,build-tools-22.0.1,extra-android-support
   
