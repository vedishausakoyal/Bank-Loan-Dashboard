use finance;
select * from bank_loan;

  --- KPI 1 YEAR WISE LOAN AMOUNT 
  
  select year (Issue_Date_Year) as Total_Year,
  sum(loan_amnt) as total_loan_amount from bank_loan 
  group by year(Issue_Date_Year)
  order by Total_year;
  
  --- KPI 2 GRADE AND SUB-GRADE WISE REVOL_BALANCE
  select
     grade,
     sub_grade,
     sum(revol_bal) as Total_revol_bal
from
    bank_loan
group by 
    grade,
    sub_grade
order by 
    grade,
    sub_grade;
  
  
  
  
  --- KPI 3 TOTAL PAYMENT FROM VERIFIED AND NON-VERIFIED 
  
  select
	 verification_status,
     sum(total_pymnt) 
from
    bank_loan
group by 
    verification_status;
  
  
  --- KPI 4 STATE AND LAST_CREDIT_PULL_D WISE LOAN STATUS 
  
  select 
      addr_state,
      last_credit_pull_d,
      sum(loan_amount)
from
    bank_loan
group by
    addr_state,
    last_credit_pull_d
order by 
    addr_state,
    last_credit_pull_d;
      
  
  --- KPI 5 HOMEOWNERSHIP V/S LAST_PAYMENT_DATE 
  
  select
	 home_ownership,
     last_payment_year,
     count(*) as total_loans
from 
   bank_loan
group by
    home_ownership,
    last_payment_year
order by 
    home_ownership,
    last_payment_year;
     
  
  
  
  
  
  
  
  
  
  
  
  