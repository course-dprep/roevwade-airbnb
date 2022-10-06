# Overturning Roe v. Wade and the impact on the Airbnb market

## Research Question
How overturning Roe v. Wade differently affect Airbnb’s market (specifically price) between states that still allow abortion and states that did not in the U.S.? 

IV: time quarter (March-June VS June-September)  
DV: price

Control variables: To be discussed
Dataset scope: To be discussed

## Table of contents 


# Code Snippet
see src/data prepation/data_preparation for an updated version 



## 1. Research motivation 
Roe v Wade is an important case that legalized abortion in the US and created national controversy by dividing the country into two. With this lawsuit, abortion was legalized in all states of the USA because it was a constitutional right for women. However, after this decision, the conservative-leaning court made it easier for states to make their own decisions, and it was outlawed again in some states. The impact of such a resounding lawsuit was not limited to national politics but had effects in many areas such as financial, social, health and tourism. 

This research will explore and analyze how Roe v Wade impacted the Airbnb market within different states. It will be studied whether there is a correlation between the variables such as prices and reviews of hosts between states where abortion is legal and not. The latest data Airbnb offers will be used.  It will be interesting to examine the effects of the lawsuit on Airbnb, which is not operating in an area first to come to mind in the abortion debate.

## URL list 
https://docs.google.com/spreadsheets/d/1tOMjx-lflqp-9XC1iGc9tdBIfK-nrOdlsLnFGgLFdVA/edit#gid=0


## 7. Research method
To address the aforementioned research question multiple AirBnB datasets, derived from InsideAirbnb, are combined to one big dataset containing data from 31 cities (19 States) in the United States: Los Angeles, Oakland, Pacific Grove, San Diego, San Francisco, San Mateo County, Santa Clara County, Santa Cruz County, Denver, Washington, D.C., Broward County, Hawaii, Chicago, New Orleans, Boston, Cambridge, Twin Cities MSA , Clark County, NV, Newark, Jersey City, New York City, Asheville, Columbus, Portland , Salem, OR, Rhode Island, Nashville, Austin, Dallas, Fort Worth, Seattle .

In total 62 different datasets are combined, each containing information per quarter.
However, the raw dataset contains lots of information, of which many is not needed to address the research question this repository is dedicated to. Therefore the data is cleaned and prepared for analyses. For more information about this read: ____________ (to be added README) 

In order to understand the effect of the over-turning of the Roe v. Wade case on Airbnb market, we exploit the idea that, although some states such as Texas banned abortion following the Supreme Court’s decision,  some other states did not. Specifically, we consider how average price of airbnb fluctuate——subsequent to the decision. 

However, this difference would also include any change in prices that might have occurred even in the absence of the policy intervention. Therefore, we use a difference-in-differences (DID) specification by comparing the price changes in States where abortion is banned (i.e., the treated state) versus those  states where abortion is still legal (the control states). 

In this research the following conceptual model applied:


(not the formal one, only use to check if we are on the right direction) 
<img width="981" alt="截屏2022-09-18 20 16 16" src="https://user-images.githubusercontent.com/112552239/190922313-ce920336-d35d-4ecc-8244-8d2114603c15.png">

