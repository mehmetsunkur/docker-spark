
SPARK_DIST_BASE_URL=https://www.apache.org/dist/spark/
LATEST_SPARK_VER=$(wget -O - $SPARK_DIST_BASE_URL | grep 'href="spark-'  | grep -oP "spark-\d.\d.\d" | tail -1)
LATEST_SPARK_DOWNLOAD_URL=$SPARK_DIST_BASE_URL$(wget -O - $SPARK_DIST_BASE_URL$LATEST_SPARK_VER/ | grep 'bin-hadoop' | grep 'tgz<' | tail -1 | grep  -oP 'spa+.*"' | grep  -oP 'spa+.*.tgz')
