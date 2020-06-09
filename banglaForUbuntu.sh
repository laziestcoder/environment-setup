wget https://github.com/maateen/avro/releases/download/v2.1/avro_2.1-3_all.deb

sudo dpkg -i avro_2*.deb

sudo apt-get install -f

ibus restart


echo "Settings > Region and language > Add an input source > Bangla > Bengali (Avro Phonetic)"
