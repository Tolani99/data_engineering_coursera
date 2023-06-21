select FullName, Location from CurrentClients UNION select FullName, Location from LegacyClients;
