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
* PostgreSQL will be used (no other db accepted)
* code must be SOLID & DRY
* no more than 3 .PHP files required at run-time 

We need to store all **Public Information** records on our personal budget from month to month. We want to store them in a Postgres DB with the following column structure:

|Reference|Report Date|Type|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|
|*VARCHAR(9)|*MM/DD/YYYY|VARCHAR(255)|VARCHAR(255)|VARCHAR(255)|VARCHAR(255)|

* From month to month we will not know how many inquiry records we'll have. Could be 1. Could 30. Could be 0.
* If 0, no record should be created. If ≤1, then create the corresponding record(s) in the DB.

*must always be present

**may sometimes be blank

***postgres db available upon request

## Data Table Selector
`#PublicInformation > ng > div:nth-child(1) > table` (this selector will only exist if there are public records available)`

## Screenshot of Data Table in HTML
![Table Appears in HTML](publicinformation_reference.png?raw=true "Table Appears in HTML")

## Data Once Inputed to Postgres
|Reference|Report Date|Type|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|
|BR54898847|05/23/2024|Type:|Chapter 13 Bankruptcy|Chapter 13 Bankruptcy|Chapter 13 Bankruptcy|
|BR54898847|05/23/2024|Status:|Discharged|Discharged|Discharged|
|BR54898847|05/23/2024|Date Filed/Reported:|10/11/2018|10/11/2018|10/01/2018|
|BR54898847|05/23/2024|Reference#:|7833748|7833748SGJ|7833748-DSP-02/24|
|BR54898847|05/23/2024|Closing Date:|02/01/2024|02/01/2024|-|
|BR54898847|05/23/2024|Asset Amount:|$0.00|$0.00|$0.00|
|BR54898847|05/23/2024|Court:|U.S. Bankruptcy Court|US BKPT CT CA SAN FRANCISCO|Federal|
|BR54898847|05/23/2024|Liability:|$0.00|$0.00|$0.00|
|BR54898847|05/23/2024|Exempt Amount:|$0.00|$0.00|$0.00|
|BR54898847|05/23/2024|Remarks:|-|-|-|
