# Project Overview

This project contains SQL scripts, their corresponding result screenshots, and an API to interact with an AWS RDS MySQL database instance.

## SQL Scripts and Screenshots

Each SQL script in the `sql` directory has a corresponding PNG file in the `screenshots` directory. The PNG files show the results of running each SQL script. The files are matched by name, with the only difference being the file extension.

The following SQL scripts and their corresponding screenshots are included:

| SQL Script                          | Screenshot                          |
|-----------------------------------|-----------------------------------|
| `0 - create_db.sql`                | `0 - create_db.png`                |
| `1 - top_customers_by_pending.sql`| `1 - top_customers_by_pending.png`|
| `2 - monthly_sales_report.sql`     | `2 - monthly_sales_report.png`     |
| `3 - products_never_ordered.sql`   | `3 - products_never_ordered.png`   |
| `4 - average_order_value_by_country.sql` | `4 - average_order_value_by_country.png` |
| `5 - frequent_buyers.sql`          | `5 - frequent_buyers.png`          |

## Additional Screenshots

There are two additional images in the `screenshots` directory:

- `create rds.png`: Shows the AWS RDS instance created for this project.
- `rds connected.png`: Shows how the connection was established with the database instance.

## API Documentation

The `api` directory contains documentation on how to use a NestJS API created to connect to the AWS RDS instance. This API provides various endpoints to retrieve reports from the MySQL database.

For detailed information on the API usage, endpoints, environment variables, and running instructions, please refer to the `api/README.md` file.
