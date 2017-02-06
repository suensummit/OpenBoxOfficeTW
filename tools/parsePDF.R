library(pdftools)
# install.packages("pdftools")

filename <- "2016/12/2016年12月上映影片全國票房資訊_20170203.pdf"

content <- pdf_text(filename)
cat(content[1])

info <- pdf_info(filename)
pageNumber <- info$pages

page1 <- strsplit(content[1], ' ')
page1 <- page1[[1]][page1[[1]] != ""]