install.packages("rvest")
library(rvest)
url="http://www.primevideo.com"
webpage=read_html(url)
title=webpage %>% html_node("title") %>% html_text()
print(title)
para=webpage %>% html_nodes("p") %>% html_text()
print(para)
for(text in para){cat("-",text,"\n")}
table=webpage %>% html_elements("table") %>% html_table()
print(table)
image=webpage %>% html_elements("img") %>% html_attr("src")
print(image)