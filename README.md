# Exporting Tables From R
This repository is based on an internal seminar given at Stats4SD. The presentation and accompanying code examples present a set of options for generating and exporting lovely tables from R into pdf, html, Word etc.

The examples focus on 3 packages:
 - Flextable
 - Kable
 - gt

## How to run the examples

1. Clone this repository to a new folder locally.
2. Open any of the Rmd files in RStudio.
3. Run the first chunk to load required libraries.
    - If you get errors, check you have the required libraries installed.
4. Change the working directory to your new local folder
5. Run any of the other chunks to see the sorts of output you can get.
6. If you want to see how all of your tables will appear in html, press the "knit" button in the bar at the top of the markdown file and then press "knit to html"
7. If you want to try knitting the flextable examples into word then you can do one of two things
8. Remove the special example which includes images and then this will run just fine; or;
9. Ensure the package "officedown" is installed and loaded. Then add the code `output::officedown:rdocx_document` to the YAML header at the top of the RMD script. Then you will be able to knit to a rdoxc word document (officedown is used to format word documents from rmakdown, this is just the name of the output type it creates but it will just open a normal document in microsoft word)

