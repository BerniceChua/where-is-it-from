# "Where's It From?"

[whereisitfrom.herokuapp.com/](http://whereisitfrom.herokuapp.com/)

Our tool empowers regular people like you and me to fight human trafficking, by helping us make informed decisions about the things we buy, through a simple question: "Where's it from?".

## Details
### Background
According to the [sfgov.org](http://sfgov.org/dosw/sites/sfgov.org.dosw/files/HT%20Report_FINAL.pdf), "Labor trafficking is under-reported and under-investigated
compared to sex trafficking. Seventy eight
percent of survivors identified by the Task
Force were sex trafficking survivors while only 8%
were identified as labor trafficking survivors. The
National Human Trafficking Resource Center
released national human trafficking statistics in
2014 that are similar to San Francisco's. 
Nationally, 71% of the reported cases involved
sex trafficking and only 16% involved labor
trafficking.  However, data from the International
Labor Organization (ILO) indicates that labor
trafficking is three times as prevalent as sex
trafficking worldwide."

The purpose of this hackathon project is to combat labor trafficking through prevention and awareness: by making it unprofitable for labor trafficking if people stop supporting their products; and by helping consumers find and support alternative products that are fair trade and ethically created.  

Since labor trafficking is under-reported and under-investigated, this web app aims to arm regular people like you and me with information about which products may potentially be the result of human trafficking, and tell us about alternative products to replace them.  

### Inspiration
One of the members of this group (Bernice) grew up in the Philippines, where human trafficking -- especially labor trafficking -- is a big problem.  

Bernice thought that there ought to be something like the Monterey Bay Aquarium Seafood Watch app (which can tell consumers which seafood is fished/farmed sustainably), but for products (which will tell consumers which products were produced ethically).

Here is the link to the [Monterey Bay Aquarium Seafood Watch app](http://www.seafoodwatch.org/seafood-recommendations/our-app).

### What It Does
A user can scan a product. The web app compares the product to what we have in the database of products that MAY be the result of labor trafficking, with image recognition or logo recognition.  If the product is something that MAY be the result of labor trafficking, it will show people alternate options.

For now, this web app works on chocolate, because that is the product that we happen to have the most data on.  But we plan to expand the product list.  

In addition to promoting fair trade products, we also make all of our code and data open-source and available for other people who would want to contribute or improve it.  

### Technologies Used
- Pandas (Python)
- Rails API backend
- PostGres
- Google image and logo recognition API
- jQuery & AJAX
- HTML5
- SASS & Bootstrap

### Data Sources
- [http://www.dol.gov/ilab/reports/child-labor/list-of-goods/](http://www.dol.gov/ilab/reports/child-labor/list-of-goods/)
- [http://www.foodispower.org/chocolate-list/](http://www.foodispower.org/chocolate-list/)
- [http://www.ethicalconsumer.org/buyersguides/food/chocolatebars.aspx](http://www.ethicalconsumer.org/buyersguides/food/chocolatebars.aspx)
- [http://www.slavefreechocolate.org/](http://www.slavefreechocolate.org/)
- [http://www.thegoodshoppingguide.com/ethical-chocolate/](http://www.thegoodshoppingguide.com/ethical-chocolate/)

### To-Dos:
- expand datasets
- add testing
- improve UI/front page (adding "About", etc).

## Contributor List
### Core Team
- Bernice Anne W. Chua
  - [GitHub](https://github.com/BerniceChua)
  - [LinkedIn](https://linkedin.com/in/bernicechua415)
  - [Twitter](https://twitter.com/ChuaBernice)
- Gary Wong
  - [GitHub](https://github.com/garywong89)
  - [LinkedIn](https://www.linkedin.com/in/garykwong2016)
- Baron Kwan
  - [GitHub](https://github.com/baronkwan)
  - [LinkedIn](https://www.linkedin.com/in/baronkwan)
- Benjamin Juang
  - [GitHub](https://github.com/benjuang)
  - [LinkedIn](https://www.linkedin.com/in/benjuang)
### Technical Advisors
- Jesse Swedko
  - [GitHub](https://github.com/jszwedko)
  - [LinkedIn](https://www.linkedin.com/in/jesseszwedko)
- Brian Holt
  - [GitHub](https://github.com/btholt)
  - [LinkedIn](https://www.linkedin.com/in/btholt)
  - [Twitter](https://twitter.com/holtbt)
- Joe Mellin
  - [GitHub](https://github.com/joemellin)
  - [LinkedIn](https://www.linkedin.com/in/joemellin)
### Subject Matter Advisors
- [Nicole Allen](http://www.athackit.org/#!mentors-and-judges/p0xzv)
- Kohl Gill
  - [LinkedIn](https://www.linkedin.com/in/kohlgill)
- Ayush Khanna
  - [LinkedIn](https://www.linkedin.com/in/ayushk)
- Mark Kwong
  - [LinkedIn](https://www.linkedin.com/in/mark-kuang-79962248)
- Walter Kerr
  - [GitHub](https://github.com/WALTERKERR)
  - [LinkedIn](https://www.linkedin.com/in/walter-kerr-2163336a)
License
----

MIT