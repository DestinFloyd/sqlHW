SQL: Realty
Step 1 - Create a new database
Create a new database called realty_db.
🔴 COMMIT 1
"Commit: REALTY - Realty database created"
Step 2 - Create a Schema
Use the schema file named realty_schema.sql, and create tables in your realty database which should model Apartments, Offices and Storefronts. They should have the following properties:

An Apartment should have:
an id (serial primary key)
an apartment number
number of bedrooms
number of bathrooms
an address (required, not null)
a tenant
an occupied status (boolean)
a square footage
a price
An Office should have:
an id
an office number
a number of floors
a square footage
a number of cubicles
a number of bathrooms
an address (required, not null)
a company name
an occupied status
a price
A storefront should have:
an id
an address
an occupied status
a price
whether there is a kitchen or not
a square footage
an owner
whether there is outdoor seating or not (default false)
Load the seed file into your database from the command line. Use the psql shell to inspect your schema.

🔴 COMMIT 2
"Commit: REALTY - Realty schema created"
Step 3 - Define a seed file and seed your database
In a SQL file named realty_seed.sql, write commands that will add new entries into your apartment, office and storefront tables. You should create at least 2 entries for each table. Vary the attributes of each entry so no two are alike. From the command line, load this seed file into your database. [You can use faker.js to generate some of this data for you] (https://cdn.rawgit.com/Marak/faker.js/master/examples/browser/index.html)

🔴 COMMIT 3
"Commit: REALTY - Realty seed file created and db seeded"
Step 4 - Queries
In the file realty.sql, write the SQL commands you would use to retrieve the following information from your database. Test each command in PSQL to make sure it is correct:

The average square footage of all offices.
The total number of apartments.
The apartments where there is no tenant
The names of all of the companies
The number of cubicles and bathrooms in the 3rd office
The storefronts that have kitchens
The storefront with the highest square footage and outdoor seating
The office with the lowest number of cubicles
The office with the most cubicles and bathrooms
🔴 COMMIT 4
"Commit: Realty queries completed"

