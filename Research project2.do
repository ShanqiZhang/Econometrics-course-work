
********************Research project 2***********************
*Date：2022.12.04
*Editor: Shanqi Zhang

*cleaning data for incomeshare variable
import delimited "/Users/shanqizhang/Desktop/ECON3300/Research project 2/API_SIincomeshare/API_SI.DST.FRST.10_DS2_en_csv_v2_4660905.csv",varnames(1) clear
drop countrycode indicatorcode indicatorname
drop v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v66
forvalues x=36(1)65{
local y= `x'+1955
rename v`x' incomeshare`y' 
}
reshape long incomeshare, i(countryname) j(year)
* Drop the regions to focus only on countries
sort countryname year
drop if countryname=="Early-demographic dividend" | countryname=="East Asia & Pacific (IDA & IBRD countries)" | countryname=="East Asia & Pacific (excluding high income)" | countryname=="Europe & Central Asia (IDA & IBRD countries)" | countryname=="Europe & Central Asia (excluding high income)" | countryname=="Fragile and conflict affected situations" | countryname=="Heavily indebted poor countries (HIPC)" | countryname=="High income" | countryname=="IBRD only" | countryname=="IDA & IBRD total" | countryname=="IDA blend" | countryname=="IDA only" |countryname=="IDA total" | countryname=="Lao PDR" | countryname=="Late-demographic dividend" | countryname=="Latin America & Caribbean (excluding high income)" | countryname=="Latin America & the Caribbean (IDA & IBRD countries)" | countryname=="Least developed countries: UN classifications" | countryname=="Low and middle income" | countryname=="Low income" | countryname=="Middle East & North Africa (IDA & IBRD countries)" | countryname=="Low income" | countryname=="Middle East & North Africa (excluding high income)" | countryname=="Not classified" | countryname=="OECD members" | countryname=="Other small states" | countryname=="Post-demographic dividend" | countryname=="Pre-demographic dividend" | countryname=="Small states" | countryname=="South Asia (IDA & IBRD)" | countryname=="Sub-Saharan Africa (IDA & IBRD countries)" | countryname=="Sub-Saharan Africa (excluding high income)" | countryname=="Upper middle income" | countryname=="World" | countryname=="Africa Eastern and Southern" | countryname=="Africa Western and Central" | | countryname=="Arab World" | countryname=="Caribbean small states" | countryname=="Central Europe and the Baltics" | countryname=="East Asia & Pacific" | countryname=="Euro area" | countryname=="Europe & Central Asia" | countryname=="European Union" | countryname=="Latin America & Caribbean" | countryname=="Least developed countries: UN classification" | countryname=="Low & middle income" | countryname=="Lower middle income" | countryname=="Middle East & North Africa" | countryname=="Middle income" | countryname=="North America" | countryname=="Pacific island small states" | countryname=="Sub-Saharan Africa" | countryname=="Least developed countries: UN classification" | countryname=="Africa Eastern and Southern" | countryname=="Africa Western and Central" | countryname=="Arab World" | countryname=="Caribbean small states" | countryname=="Central Europe and the Baltics" | countryname=="East Asia & Pacific" | countryname=="Euro area" | countryname=="Europe & Central Asia" | countryname=="European Union" | countryname=="Latin America & Caribbean" | countryname =="Low & middle income" | countryname =="Lower middle income" | countryname =="Middle East & North Africa" |countryname=="Middle income" | countryname=="Pacific island small states" 
*counting non-missing values for incomeshare data
count if incomeshare !=.
save "/Users/shanqizhang/Desktop/ECON3300/Research project 2/incomeshare.dta",replace
clear

*cleaning data for unemployment variable
import delimited "/Users/shanqizhang/Desktop/ECON3300/Research project 2/API_SLunemployment/API_SL.UEM.TOTL.ZS_DS2_en_csv_v2_4700967.csv", varnames(1) 
drop countrycode indicatorcode indicatorname
drop v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v66
forvalues x=36(1)65{
local y= `x'+1955
rename v`x' unemployment`y' 
}
reshape long unemployment, i(countryname) j(year)
* Drop the regions to focus only on countries
sort countryname year
drop if countryname=="Early-demographic dividend" | countryname=="East Asia & Pacific (IDA & IBRD countries)" | countryname=="East Asia & Pacific (excluding high income)" | countryname=="Europe & Central Asia (IDA & IBRD countries)" | countryname=="Europe & Central Asia (excluding high income)" | countryname=="Fragile and conflict affected situations" | countryname=="Heavily indebted poor countries (HIPC)" | countryname=="High income" | countryname=="IBRD only" | countryname=="IDA & IBRD total" | countryname=="IDA blend" | countryname=="IDA only" |countryname=="IDA total" | countryname=="Lao PDR" | countryname=="Late-demographic dividend" | countryname=="Latin America & Caribbean (excluding high income)" | countryname=="Latin America & the Caribbean (IDA & IBRD countries)" | countryname=="Least developed countries: UN classifications" | countryname=="Low and middle income" | countryname=="Low income" | countryname=="Middle East & North Africa (IDA & IBRD countries)" | countryname=="Low income" | countryname=="Middle East & North Africa (excluding high income)" | countryname=="Not classified" | countryname=="OECD members" | countryname=="Other small states" | countryname=="Post-demographic dividend" | countryname=="Pre-demographic dividend" | countryname=="Small states" | countryname=="South Asia (IDA & IBRD)" | countryname=="Sub-Saharan Africa (IDA & IBRD countries)" | countryname=="Sub-Saharan Africa (excluding high income)" | countryname=="Upper middle income" | countryname=="World" | countryname=="Africa Eastern and Southern" | countryname=="Africa Western and Central" | | countryname=="Arab World" | countryname=="Caribbean small states" | countryname=="Central Europe and the Baltics" | countryname=="East Asia & Pacific" | countryname=="Euro area" | countryname=="Europe & Central Asia" | countryname=="European Union" | countryname=="Latin America & Caribbean" | countryname=="Least developed countries: UN classification" | countryname=="Low & middle income" | countryname=="Lower middle income" | countryname=="Middle East & North Africa" | countryname=="Middle income" | countryname=="North America" | countryname=="Pacific island small states" | countryname=="Sub-Saharan Africa" | countryname=="Least developed countries: UN classification" | countryname=="Africa Eastern and Southern" | countryname=="Africa Western and Central" | countryname=="Arab World" | countryname=="Caribbean small states" | countryname=="Central Europe and the Baltics" | countryname=="East Asia & Pacific" | countryname=="Euro area" | countryname=="Europe & Central Asia" | countryname=="European Union" | countryname=="Latin America & Caribbean" | countryname =="Low & middle income" | countryname =="Lower middle income" | countryname =="Middle East & North Africa" |countryname=="Middle income" | countryname=="Pacific island small states" 
*counting non-missing values for unemployment data
count if unemployment!=.

*merging unermployment and incomeshare data
merge 1:1 countryname year using "/Users/shanqizhang/Desktop/ECON3300/Research project 2/incomeshare.dta"
keep if _merge==3
drop _merge
*counting the effective observations for the merged data
count if incomeshare!=. & unemployment!=.

*regression 1: Linear regression
regress incomeshare unemployment,robust
*adjusted R square value for reg 1
display e(r2_a)
*graphing for regression 1
predict incomeshare_hat
twoway scatter incomeshare unemployment || line incomeshare_hat unemployment, sort
graph save "Graph" "/Users/shanqizhang/Desktop/ECON3300/Research project 2/Graph1.gph", replace
*calculating economic significance:
sum incomeshare, detail
*magnitude of change=0.0251718/ 2.527576*100%=1.00%, which is not economically significance.

*regression 2: Polynomial regression
gen unemployment_sq=unemployment^2
regress incomeshare unemployment unemployment_sq,robust
*adjusted R square value for reg 2
display e(r2_a)
*graphing for regression 2
predict incomeshare_hat2
twoway scatter incomeshare unemployment || line incomeshare_hat2 unemployment, sort
graph save "Graph" "/Users/shanqizhang/Desktop/ECON3300/Research project 2/Graph2.gph", replace
*Mean of unemployment= 8.314783
*Income share held by lowest 10% at mean unemployment= 2.534477+ 0.0191362 (8.314783)  - 0.0018157 (8.314783) =2.67849319 
*Income share held by lowest 10%= 2.534477+ 0.0191362 (9.31478)  - 0.0018157 (9.314783) =2.69581369 
*Change in Income share held by lowest 10%=0.0173205
*Maginitude of change=(0.0173205/ 2.527576)*100= 0.68526129% which is economically insignificant. 


*regression 4: multiple time periods regression combining entity and time fixed effect 
egen countrynameid = group(countryname), label lname(countryname)
reg incomeshare unemployment i.countrynameid i.year, cluster(countrynameid)
*adjusted R square value for reg 4
display e(r2_a)
*graphing for regression 4
predict incomeshare_hat4
twoway scatter incomeshare unemployment || line incomeshare_hat4 unemployment, sort
graph save "Graph" "/Users/shanqizhang/Desktop/ECON3300/Research project 2/Graph4.gph", replace
*saving merged data for the second merge
save "/Users/shanqizhang/Desktop/ECON3300/Research project 2/merged1data.dta", replace
*maginitude of change= 0.030131/2.527576*100%=1.19%
clear

*cleaning data for taxrevenue
import delimited "/Users/shanqizhang/Desktop/ECON3300/Research project 2/API_GCtaxrevenue/API_GC.TAX.TOTL.GD.ZS_DS2_en_csv_v2_4697115.csv", varnames(1) 
drop countrycode indicatorcode indicatorname
drop v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v66
forvalues x=36(1)65{
local y= `x'+1955
rename v`x' taxrevenue`y' 
}
reshape long taxrevenue, i(countryname) j(year)
* Drop the regions to focus only on countries
sort countryname year
drop if countryname=="Early-demographic dividend" | countryname=="East Asia & Pacific (IDA & IBRD countries)" | countryname=="East Asia & Pacific (excluding high income)" | countryname=="Europe & Central Asia (IDA & IBRD countries)" | countryname=="Europe & Central Asia (excluding high income)" | countryname=="Fragile and conflict affected situations" | countryname=="Heavily indebted poor countries (HIPC)" | countryname=="High income" | countryname=="IBRD only" | countryname=="IDA & IBRD total" | countryname=="IDA blend" | countryname=="IDA only" |countryname=="IDA total" | countryname=="Lao PDR" | countryname=="Late-demographic dividend" | countryname=="Latin America & Caribbean (excluding high income)" | countryname=="Latin America & the Caribbean (IDA & IBRD countries)" | countryname=="Least developed countries: UN classifications" | countryname=="Low and middle income" | countryname=="Low income" | countryname=="Middle East & North Africa (IDA & IBRD countries)" | countryname=="Low income" | countryname=="Middle East & North Africa (excluding high income)" | countryname=="Not classified" | countryname=="OECD members" | countryname=="Other small states" | countryname=="Post-demographic dividend" | countryname=="Pre-demographic dividend" | countryname=="Small states" | countryname=="South Asia (IDA & IBRD)" | countryname=="Sub-Saharan Africa (IDA & IBRD countries)" | countryname=="Sub-Saharan Africa (excluding high income)" | countryname=="Upper middle income" | countryname=="World" | countryname=="Africa Eastern and Southern" | countryname=="Africa Western and Central" | | countryname=="Arab World" | countryname=="Caribbean small states" | countryname=="Central Europe and the Baltics" | countryname=="East Asia & Pacific" | countryname=="Euro area" | countryname=="Europe & Central Asia" | countryname=="European Union" | countryname=="Latin America & Caribbean" | countryname=="Least developed countries: UN classification" | countryname=="Low & middle income" | countryname=="Lower middle income" | countryname=="Middle East & North Africa" | countryname=="Middle income" | countryname=="North America" | countryname=="Pacific island small states" | countryname=="Sub-Saharan Africa" | countryname=="Least developed countries: UN classification" | countryname=="Africa Eastern and Southern" | countryname=="Africa Western and Central" | countryname=="Arab World" | countryname=="Caribbean small states" | countryname=="Central Europe and the Baltics" | countryname=="East Asia & Pacific" | countryname=="Euro area" | countryname=="Europe & Central Asia" | countryname=="European Union" | countryname=="Latin America & Caribbean" | countryname =="Low & middle income" | countryname =="Lower middle income" | countryname =="Middle East & North Africa" |countryname=="Middle income" | countryname=="Pacific island small states" 
*counting non-missing values for taxrevenue data
count if taxrevenue!=.
*finding the mean of tax revenue
sum taxrevenue
*creating the dummy variable "hightax"
gen hightax=taxrevenue
replace hightax=0 if hightax<=16.78321
replace hightax=1 if hightax>=16.78321
replace hightax=. if taxrevenue==.
save "/Users/shanqizhang/Desktop/ECON3300/Research project 2/taxrevenue.dta", replace

*merging merging unemployment and incomeshare data with hightax data
merge 1:1 countryname year using "/Users/shanqizhang/Desktop/ECON3300/Research project 2/merged1data.dta"
*counting the effective observations for the merged data
count if incomeshare!=. & unemployment!=. & hightax!=.
sum unemployment hightax incomeshare, d

*generateing the intersaction variable
gen unemploymentxhightax=unemployment*hightax
*regression 3:interacted regressions with one binary variable
reg incomeshare unemployment hightax unemploymentxhightax,robust
*adjusted R square value for reg 3
display e(r2_a)
*graphing for regression 3
predict incomeshare_hat3
twoway scatter incomeshare unemployment || line incomeshare_hat3 unemployment, sort
graph save "Graph" "/Users/shanqizhang/Desktop/ECON3300/Research project 2/Graph3.gph", replace
*maginitude of change= 0.018172/2.527576*100%=0.719%
save "/Users/shanqizhang/Desktop/ECON3300/Research project 2/finaldata.dta", replace

