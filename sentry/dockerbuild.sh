yum install -y  gcc-c++ python-setuptools python-devel libxslt-devel libffi-devel libjpeg-devel libxml2-devel libxslt-devel libyaml-devel postgresql-devel
python /home/youxian/get-pip.py
rm -f /home/youxian/get-pip.py
pip install -U virtualenv
cd /home/youxian
virtualenv webapps
pip install sentry==${APP_VERSION} --no-cache-dir
pip install sentry-plugins --no-cache-dir
yum remove -y g++  gcc-c++
yum clean all
