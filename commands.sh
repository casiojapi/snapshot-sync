# client command
java -Dlogback.configurationFile=./rskj-core/src/main/resources/logback-client.xml -Drsk.conf.file=configs/client.conf -Ddatabase.dir=awtestdb/database -Drpc.providers.web.http.port=4445 -cp rskj-core/build/libs/rskj-core-5.1.0-SNAPSHOT-all.jar co.rsk.Start

# server command
java -Drsk.conf.file=configs/server.conf -Ddatabase.dir=fulldb/database/mainnet -Dkeyvalue.datasource=rocksdb -Dpper.port=5050 -Dpublic.ip=127.0.0.1 -cp rskj-core/build/libs/rskj-core-5.1.0-SNAPSHOT-all.jar co.rsk.Start

# server-2 command
java -Drsk.conf.file=configs/server-2.conf -Ddatabase.dir=fulldbtwo/database/mainnet -Dkeyvalue.datasource=rocksdb -Dpeer.port=7070 -Dlogback.configurationFile=./rskj-core/src/main/resources/logback-server-2.xml -Dpublic.ip=127.0.0.1 -Drpc.providers.web.http.port=8889 -Xmx8G -cp rskj-core/build/libs/rskj-core-5.1.0-SNAPSHOT-all.jar co.rsk.Start
