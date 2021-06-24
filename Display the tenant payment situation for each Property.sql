
select P.Name as PropertyName,concat(FirstName,' ', LastName) As TenantName,pay.Amount as RentalRate,F.Name as PaymentFrequency
from dbo.OwnerProperty as OP 
INNER JOIN dbo.PropertyRepayment as Pay ON OP.PropertyId=pay.PropertyId
inner Join dbo.Property as P ON P.Id=pay.PropertyId
Inner Join dbo.TenantPaymentFrequencies as F ON F.id= Pay.FrequencyType
Inner JOIN dbo.TenantProperty as TP ON TP.PropertyId= pay.PropertyId
INNER JOIN dbo.person ON person.Id = TP.TenantId
WHERE OP.OwnerId = 1426
