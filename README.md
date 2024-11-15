# Project: Public Information

## Description of Project
We need a PHP solution to parse this HTML file uploaded by our family members. Each file will follow the same format, but the number of records inside may vary. Parsed data will be saved into a PostgreSQL database.

## Requirements
* validate file size
* validate by HTML MIME type
* temporary storage can be used but must be terminated after successful storage
* delivered file needs to independently function without the assistance of frameworks
* vanilla PHP is the only acceptable approach
* no frameworks to be used (like Laravel or Slim)

We need to store all **public information** records on our personal budget from month to month. We want to store them in a Postgres DB with the following column structure:

|Reference|Report Date|Group|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|
|*VARCHAR(9)|*MM/DD/YYYY|VARCHAR(3)|VARCHAR(255)|VARCHAR(255)|VARCHAR(255)|

* From month to month we will not know how many inquiry records we'll have. Could be 1. Could 30. Could be 0.
* If 0, no record should be created. If ≤1, then create the corresponding record(s) in the DB.

*must always be present

**may sometimes be blank

***postgres db available upon request

## Table Selector
`#PublicInformation > ng > div:nth-child(1) > table` (this selector will only exist if there are public records available)
