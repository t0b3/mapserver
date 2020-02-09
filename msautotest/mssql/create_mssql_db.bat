set SQLPASSWORD=Password12!
set SERVER=(local)\SQL2017

sqlcmd -S "%SERVER%" -Q "USE [master]; CREATE DATABASE msautotest;"

ogr2ogr -overwrite -f MSSQLSpatial "MSSQL:server=%SERVER%;database=msautotest;User Id=sa;Password=%SQLPASSWORD%;" "query/data/bdry_counpy2.shp" -nln "bdry_counpy2"
ogr2ogr -overwrite -f MSSQLSpatial "MSSQL:server=%SERVER%;database=msautotest;User Id=sa;Password=%SQLPASSWORD%;" "renderers/data/cities.shp" -nln "cities"
