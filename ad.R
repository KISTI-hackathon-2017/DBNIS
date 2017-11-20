## 패키지 인스톨 및 데이터 csv 파일로 저자
install.packages("DBI")
install.packages("RMySQL")
library(DBI)
library(RMySQL)
con = dbConnect(MySQL(),host = '220.123.184.109', user = 'kisti',dbname = 'kisti',password
                ='kisti1234!')

sp <- dbGetQuery(con, "select * from sensorParser where lat is not null") # Query Test 2
head(sp)
sp




write.table(x = sp, file = "C:\\Users\\user\\Desktop\\sp추출.txt", sep=",", row.names = T)
