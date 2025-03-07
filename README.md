# ConvexHull-GIS
In geospatial mapping (e.g., GIS systems), convex hulls are used to enclose a set of geographic points, such as the outer boundary of a region of interest.

We implement this project to form a convex hull between different major landmarks in India and as a part of our assignment in the course, Design and Analysis of Algorithms. We also find the 3 nearest neighbours from one chosen landmark. 

**Execution:**
1. Utilized placement_generator.kml to mark 9 Indian landmarks on Google Earth
2. Inserted the landmarks into a PostGIS-enabled PostgreSQL database.
3. Executed PostGIS SQL queries (PostGIS_Queries.sql) to compute the convex hull of the landmarks and to determine the three closest neighboring landmarks for a certain landmark.
5. Exported both the results and plotted it using convex_hull_generator.kml on Google Earth.
6. Created a spirograph for visualization purposes (spirograph_india_medium.kml).



