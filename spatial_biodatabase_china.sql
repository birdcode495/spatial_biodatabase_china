-- Project Start (Biodiversity of the Shanghai municipality)

---- Creating the PostGIS extension

CREATE EXTENSION postgis;

-- Kingdom: Plantae (GBIF records and species richness)

SELECT scientific AS scientific_name, family, COUNT(DISTINCT id) AS gbif_records FROM gbif_shanghai
WHERE kingdom = 'Plantae' GROUP BY scientific_name, family ORDER BY gbif_records DESC;

-- Class: Aves (GBIF records and species richness)







