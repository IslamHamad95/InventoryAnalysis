with Cte as(
select Brand , Sum(QuantityBought) TotablBought, Sum(QuantitySold) TotalSold
from PSSummary
group by(Brand)
)
select Brand , TotablBought,TotalSold, TotablBought-TotalSold as remaining
from cte
order by remaining
