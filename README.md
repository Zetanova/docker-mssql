## description

Extends the default mssql/server package with mssql-server-fts (Full Text Search) 

## build docker image
```
docker build --platform linux/amd64 -t zetanova/mssql:2022-CU13-fts -t zetanova/mssql:latest --push .
```