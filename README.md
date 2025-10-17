# HomeCat
A open source home management app.


## Setup Database

Use docker to run the database local.

``` shell
docker run --name home-cat-db -e POSTGRES_PASSWORD=Wert123! -d -p 5432:5432 postgres:13.22-alpine3.21
```

Use EntityFramework migration to generate the database.

```shell
dotnet ef database update --project src/HomeCat.Data
```