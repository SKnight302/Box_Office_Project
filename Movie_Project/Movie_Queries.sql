SELECT Year, AVG(Worldwide) AS "Average Earnings"
FROM [Total_Movie_Data]
Where Origin= 'International'
Group By Year, Origin
Order By [Average Earnings];

Select Year, Count(Case When Worldwide_Adjusted>500000000 Then Worldwide_Adjusted END) AS Half_Billion,
Count(Case When Worldwide_Adjusted>1000000000 Then Worldwide_Adjusted END) AS Billion
From [Total_Movie_Data]
Group By Year
Order By Half_Billion

Select Year, Count(Case When Origin = 'USA' Then Origin END) AS Counts,
Count(Case When Origin = 'International' Then Origin END) AS International_Counts
From[Total_Movie_Data]
Group by Year
Order by Year;

Select Year, Count(Case When Worldwide>500000000 Then Worldwide END) AS Half_Billion,
Count(Case When Worldwide>1000000000 Then Worldwide END) AS Billion
From [Total_Movie_Data]
Group By Year
Order By Half_Billion

Select *
FROM [Total_Movie_Data]
Where Worldwide_Adjusted >=1000000000
Order BY Worldwide_Adjusted;

Select * 
From [Total_Movie_Data]
Where Worldwide >=1000000000
Order By Worldwide