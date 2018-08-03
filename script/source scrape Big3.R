## Set URL
baseurl <- "https://www.glassdoor.com/Reviews/"
sort <- ".htm?sort.sortType=RD&sort.ascending=true"
totalreviews <- read_html(paste(baseurl, company, sort, sep="")) %>% 
  html_nodes(".margBot.minor") %>% 
  html_text() %>% 
  sub(" reviews", "", .) %>% 
  sub(",", "", .) %>% 
  as.integer()
maxresults <- as.integer(ceiling(totalreviews/10))     #10 reviews per page, round up to whole number

## A. Create df by scraping: Date, Summary, Title, Pros, Cons, Helpful
df.z <- map_df(1:maxresults, function(i) {
  
  Sys.sleep(2)    #be a polite bot
  
  cat("! ")     #progress indicator
  
  pg <- read_html(sprintf(paste(baseurl, company, "_P", i, sort, sep="")))
  
  data.frame(rev.date = html_text(html_nodes(pg, ".date.subtle.small, .featuredFlag")),
             rev.sum = html_text(html_nodes(pg, ".reviewLink .summary:not([class*='hidden'])")),
             rev.title = html_text(html_nodes(pg, "#ReviewsFeed .hideHH")),
             rev.pros = html_text(html_nodes(pg, "#ReviewsFeed .pros:not([class*='hidden'])")),
             rev.cons = html_text(html_nodes(pg, "#ReviewsFeed .cons:not([class*='hidden'])")),
             rev.helpf = html_text(html_nodes(pg, ".tight")),
             stringsAsFactors=F)
})
