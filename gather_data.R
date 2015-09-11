wd <- "~/GitHub/Avito-Context-Add-Clicks"

setwd(wd)

# The following files are provided
#   - UserInfo.tsv.7z
#   - Category.tsv.7z
#   - Location.tsv.7z
#   - PhoneRequestsStream.tsv.7z
#   - testSearchStream.tsv.7z
#   - sampleSubmission.csv.7z
#   - sampleSubmission_HistCTR.csv.7z
#   - AdsInfo.tsv.7z
#   - VisitsStream.tsv.7z
#   - trainSearchStream.tsv.7z
#   - SearchInfo.tsv.7z
#   - database.sqlite.7z

# the scripts below seem to corrupt the 7z files.

source("~/GitHub/Get-Raw-Data/download.R")
downloadKaggle("avito-context-ad-clicks","UserInfo.tsv.7z")
downloadKaggle("avito-context-ad-clicks","Category.tsv.7z")
downloadKaggle("avito-context-ad-clicks","Location.tsv.7z")
downloadKaggle("avito-context-ad-clicks","PhoneRequestsStream.tsv.7z")
downloadKaggle("avito-context-ad-clicks","testSearchStream.tsv.7z")
downloadKaggle("avito-context-ad-clicks","sampleSubmission.csv.7z")
downloadKaggle("avito-context-ad-clicks","sampleSubmission_HistCTR.csv.7z")
downloadKaggle("avito-context-ad-clicks","AdsInfo.tsv.7z")
downloadKaggle("avito-context-ad-clicks","VisitsStream.tsv.7z")
downloadKaggle("avito-context-ad-clicks","trainSearchStream.tsv.7z")
downloadKaggle("avito-context-ad-clicks","SearchInfo.tsv.7z")
downloadKaggle("avito-context-ad-clicks","database.sqlite.7z")

# at this point manually extract the 7z zip files

trnFile <- "train.csv"
tstFile <- "test.csv"

download.file(trnUrl, paste(wd,"\\train.csv", sep=""), quiet=TRUE)
download.file(tstUrl, paste(wd,"\\test.csv", sep=""), quiet=TRUE)

datalist <- list(
        train=read.csv(
                paste(wd,"\\",trnFile, sep=""), header=TRUE, as.is=TRUE), 
        test=read.csv(
                paste(wd,"\\",tstFile, sep=""), header=TRUE, as.is=TRUE)
        )