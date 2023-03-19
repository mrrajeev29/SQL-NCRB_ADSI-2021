create database project;
use project;
Create table Death_Analysis(Sl_No int,Cause varchar(50),
                             No_of_cases int,
                             Male_involved int,
                             Female_involved int,
							 Transgender_involved int,
							 Total int,
                             Male_died int,
                             Female_died int,
                             Transgender_died int,
                             Total_died int,
                             Percentage_share float);
select *from Death_Analysis;
select Cause as cause_of_death from Death_Analysis; 
select Cause as cause_of_death, No_of_cases as Number_of_Case_from_a_particular_cause from Death_Analysis;
select Cause as cause_of_death, Total as Number_of_Total_person_injured from Death_Analysis;
select Cause as cause_of_death, Male_involved as Number_of_Total_Male_injured from Death_Analysis;  
select Cause as cause_of_death, Female_involved as Number_of_Total_Female_injured from Death_Analysis;  
select Cause as cause_of_death, Transgender_involved as Number_of_Total_Transgender_injured from Death_Analysis;  
select Cause as cause_of_death, Male_died as Number_of_Total_Male_died_from_particular_death_cause from Death_Analysis;
select Cause as cause_of_death, Female_died as Number_of_Total_Female_died_from_particular_death_cause from Death_Analysis; 
select Cause as cause_of_death, Transgender_died as Number_of_Total_Transgender_died_from_particular_death_cause from Death_Analysis; 
select sum(Percentage_share) from Death_Analysis;
select Cause as cause_of_death,Percentage_share from Death_Analysis;
select cause as Cause_of_maximum_number_of_Accident from Death_Analysis where Total=(select max(Total) from Death_Analysis);
select cause as Cause_of_maximum_number_of_death from Death_Analysis where Total_died=(select max(Total_died) from Death_Analysis);
select Male_involved-Male_died as Number_of_male_recovered_from_Accident from Death_Analysis;
select Female_involved-Female_died as Number_of_female_recovered_from_Accident from Death_Analysis;
select Transgender_involved-Transgender_died as Number_of_Transgender_recovered_from_Accident from Death_Analysis;
-- to be paste
select Cause as Decreasing_order_of_cause_of_death from Death_Analysis order by No_of_cases desc;
