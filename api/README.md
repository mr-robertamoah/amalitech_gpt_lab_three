# NestJS RDS API

This project is a NestJS-based API server that provides various reports from a MySQL database. The API exposes endpoints to retrieve customer, sales, product, and order reports.

## API Endpoints

All valid endpoints are prefixed with `/reports`.

- `GET /reports/customers/top-spenders`  
  Returns a list of customers who have spent the most, including their customer ID, name, email, country, and total amount spent.

- `GET /reports/sales/monthly`  
  Returns monthly sales data per product, including product ID, name, quantity sold, sales amount, order year, and order month.

- `GET /reports/products/never-ordered`  
  Returns a list of products, including product ID and name, that have never been ordered.

- `GET /reports/orders/average-value-by-country`  
  Returns the average order value grouped by customers' countries.

- `GET /reports/customers/frequent-buyers`  
  Returns customers who have made more than one order, including their customer ID, name,and order count.

- `*`
  Returns a json in the form provided below:
  `{"message":"Cannot METHOD url","error":"Not Found","statusCode":404}`.
  Where `METHOD` is the request method and `url` is the request url.
  
## Environment Variables

The application requires the following environment variables to connect to the RDS MySQL database:

- `DB_HOST` - The hostname or IP address of the MySQL server.
- `DB_PORT` - The port number of the MySQL server (default is 3306).
- `DB_USER` - The MySQL username.
- `DB_PASSWORD` - The MySQL user password.
- `DB_NAME` - The name of the MySQL database to connect to.

These variables can be set in a `.env` file at the root of the project. You can simply rename .env.example file and edit the values of the variables.

## Running the Project Locally

1. Clone Git repository:

```bash
git clone https://github.com/mr-robertamoah/nestjs_rds_api.git
```

2. Change directory into folder:

```bash
cd nestjs_rds_api
```

3. Rename .env.example to .env and enter the necessary credentials

```bash
mv .env.example .env
```

```
DB_HOST=your-rds-endpoint.rds.amazonaws.com
DB_PORT=3306
DB_USER=admin
DB_PASSWORD=yourpassword
DB_NAME=yourdb
```

4. Install dependencies:

```bash
npm install
```

5. Start the development server:

```bash
npm run start:dev
```

The API will be available at `http://localhost:3000`.

## Using Docker

The API is available as a Docker image on Docker Hub.

1. Pull the Docker Image

```bash
docker pull mrrobertamoah/nestjs_rds_api:latest
```

2. Run the Docker Container

```bash
docker run -d -p 3000:3000 --name nestjs_rds_api \
  -e DB_HOST=your_db_host \
  -e DB_PORT=3306 \
  -e DB_USER=your_db_user \
  -e DB_PASSWORD=your_db_password \
  -e DB_NAME=your_db_name \
  mrrobertamoah/nestjs_rds_api:latest
```

or

2. Create a .env file populated with the necessary environment variabl and use the command below

```
DB_HOST=your-rds-endpoint.rds.amazonaws.com
DB_PORT=3306
DB_USER=admin
DB_PASSWORD=yourpassword
DB_NAME=yourdb
```

3. Run the Docker Container

```bash
docker run -d -p 3000:3000 --name nestjs_rds_api \
  --env-file .env \
  mrrobertamoah/nestjs_rds_api:latest
```

Replace the environment variable values with your actual database credentials.

The API will be accessible at `http://localhost:3000` or `http://your-server-ip:3000`.

## Test Running Instance

Either use curl or your browser to send a get requests using any of the above URLs to test a live instance of the API

```
http://18.203.83.137:3000/
```

Note: This endpoint provided will be terminated soon and hence will be unreachable when that happens.

## License

This project is licensed under the MIT License.
