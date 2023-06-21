select FullName, Location from CurrentClients UNION ALL select FullName, Location from LegacyClients;
