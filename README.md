# text-mining-big3-reviews   
_Applying basic text mining to find out what Big 3 employees write the most about to describe their workplace experiences._

=======

Ever wondered what it's like to work for a specific company? If so, you've probably looked into [Glassdoor]( https://www.glassdoor.com). The site contains user-generated content on which people share feedback about company-specific compensation, interview experiences, and post anonymous reviews that evaluate the workplace. Its features include star ratings (on a 5-point scale), where employees award the company stars on a mix of factors such as workplace culture, work/life balance, and senior management. 

The star ratings are enough for some people to get an idea of whether the prospective company has the right environment for them, but for others, it doesn't tell the story about sentiments towards the workplace. Sentiments reflect people's attitudes and opinions based on what they have to say - whether they are positive, negative, or neutral - and can provide a proxy for employee satisfaction. 

It makes sense to want to work at a place where employee satisfaction is high. The more satisfied employees are, the better the attitudes are about their work, and the better their performance will be. This makes a workplace attractive. The reviews section of Glassdoor is a good resource to gauge this, but involves sifting through pages and pages of reviews - some decidedly misleading and exaggerated, others insightful and useful - and it can be a time-consuming endeavor. 

**An alternative is to streamline this task and get a high-level overview shown primarily as tables and charts.** One way to do this is through text mining. The idea is to apply web scraping to the written reviews about a company posted on Glassdoor to create a database of text. After obtaining this data, it can be applied to text analytics and sentiment analysis.

We'll use the "Big Three" as an example. That's **McKinsey & Co.**, **The Boston Consulting Company** and **Bain & Co.** - widely known as "MBB" - and they're the world's largest consulting firms by revenue. 

=======

This repository contains the two files used to create this post:

`2018-07-16-text-mining-glassdoor-big3.Rmd` Markdown to generate narrative, code, and output into a single document.   
Note that user will have to define a filepath to his/her own computer for the R source file below.   
`source scrape Big3.R` Source file used with the .Rmd file to scrape Glassdoor.
