insert into Activity(ActivityID, Properties) values(1, '{"ClientID": "Cl1", "ProductID": "P1", "Order": "True"}'), (2, '{"ClientID": "Cl2", "ProductID": "P4", "Order": "False"}'), (3, '{"ClientID": "Cl3", "ProductID": "P5","Order": "True"}');
select ActivityID, Properties->'$.ClientID', Properties->'$.ProductID', Properties->'$.Order' from Activity;
