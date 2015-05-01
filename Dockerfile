FROM jacekmarchwicki/android:java7
MAINTAINER Olivier Tabone <olivier.tabone@ripplemotion.fr>



# Install sdk elements
ADD android-update.exp /tmp/

RUN set -x \
   && expect -f /tmp/android-update.exp android-22,tool,platform-tool,build-tools-22,extra-android-support,platform-tools,tools,build-tools-22,addon-google_apis_x86-google-22,extra-android-support,extra-android-m2repository,extra-google-m2repository,sys-img-armeabi-v7a-android-22,sys-img-armeabi-x86-android-22

RUN which adb
RUN which android

