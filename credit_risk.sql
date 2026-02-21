select * from credit_risk;

-- overall default rate

select count(*) as total_loans,
	sum(default_flag) as total_defaults,
    round(sum(default_flag)*100/ count(*),2) as default_rate_percent
    from credit_risk;    
	
-- Default rate by Risk Category

select risk_category, count(*) as total_customers,
		sum(default_flag) as total_defaults,
        round(sum(default_flag) * 100.0/ count(*),2) as default_rate_percent
 from credit_risk
 group by risk_category
 order by default_rate_percent;
 
 -- Loan Exposure by Risk Category
 
 SELECT 
    risk_category,
    ROUND(SUM(loan_amount), 2) as total_loan_exposure,
    ROUND(SUM(outstanding_balance), 2) as total_outstanding_exposure
FROM credit_risk
GROUP BY risk_category
ORDER BY total_loan_exposure DESC;
 
 -- Most Risky Loan Purpose
 SELECT 
    loan_purpose,
    COUNT(*) AS total_loans,
    ROUND(AVG(default_flag) * 100, 2) as default_rate_percent
FROM credit_risk
GROUP BY loan_purpose
ORDER BY default_rate_percent DESC;
 
-- Default Exposure by risk category

select risk_category,
	round(sum(outstanding_balance),2) as total_outstanding_exposure,
    round(sum(case
		when default_flag =1
        then outstanding_balance
        else 0
    end),2) as default_exposure,
    round(sum(case
		when default_flag =1
        then outstanding_balance
        else 0
     end)* 100.0/ sum(outstanding_balance),2) as exposure_default_percent
from credit_risk
group by risk_category
order by exposure_default_percent desc;     
     
--  Default exposure by loan purpose

select loan_purpose,
		round(sum(outstanding_balance),2) as total_outstanding,
        round(sum(case
			when default_flag =1
            then outstanding_balance
            else 0
        end),2) as default_exposure,
        round(avg(default_flag)*100,2) as default_rate_percent
        
from credit_risk
group by loan_purpose
order by default_exposure desc;        

-- top 10 customers by outstanding
select customer_id, outstanding_balance
from credit_risk
order by outstanding_balance desc
limit 10;

-- % of total exposure held by top 10
select round(sum(outstanding_balance) *100.0/ 
			(select sum(outstanding_balance) from credit_risk),2) as top10_exposure_percent
        from( select outstanding_balance
		      from credit_risk
              order by outstanding_balance desc
              limit 10
              ) as top10;
            
            
            
            
            
            
	
 
