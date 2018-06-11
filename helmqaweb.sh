cd `dirname $0`

if [ ! -d logs ]
then
	mkdir -p logs
fi

LC_ALL=C.UTF-8 LANG=C.UTF-8 FLASK_APP=helmqaweb.py flask run --host=0.0.0.0 2>&1 | tee -a logs/helmqaweb.log
