#
# To check for users over the wifi
#
sudo nmap -sP 192.168.1.0/24 | grep 'MAC Address' | awk '{print $3}' > data.csv
mysql --local-infile -uroot -pqwerty Home<<EOFMYSQL

CREATE TEMPORARY TABLE temporary_detect LIKE Detect;

LOAD DATA LOCAL INFILE 'data.csv'
INTO TABLE temporary_detect
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(MAC_Address);

INSERT INTO Detect
SELECT * FROM temporary_detect
ON DUPLICATE KEY UPDATE Time = Detect.Time + 2;

SELECT * FROM Detect;
EOFMYSQL

rm -f data.csv

