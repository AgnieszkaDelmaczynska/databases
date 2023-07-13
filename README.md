# databases 2021
Project as part of Databases course

## Project Topic
Topic 28: The travel agency database contains information about trips, guides, and participants.

## Project Description
Implementation of a database for easier and more efficient management of trips.
Ability to efficiently search for a trip that interests the user.

## Detailed Project Description
### Client:
Owner of a travel agency.

### Goal:
Facilitate the management of travel agencies. Utilize the time, capabilities, and skills of trip guides to ensure that the trips they lead align with their professional specialties, languages spoken, and the destination of the tour. 

Each person seeking a trip will have the opportunity to choose something for themselves. They will be able to consider the opinions of other users who have rated the trip. The process of selecting a trip will be efficient and tailored to the individual's age, group, budget, and language. All of this is aimed at ensuring that travel agency customers explore various interesting places and are satisfied with their journey.

### Users:
The users will be individuals ranging in age from 20 to 80 years old. These will include travel agency employees in the tour reservation department, as well as individuals potentially interested in the travel agency's offerings. When searching on the website, users will enter their preferences (filters) and find the most suitable option for them.

## Sample queries to the database:
- Find a trip with a rating of at least 4.
- Find a trip lasting over 5 days in France.
- Find an English-speaking trip.
- Find a trip led by a guide who can speak Polish and Spanish.
- Find an all-inclusive trip in Spain.

## Sample scenarios:
- Find a trip suitable for a 5-year-old child, conducted in the Polish language, and last 5 days.
- Find a trip suitable for a senior couple. They expect a peaceful vacation and would appreciate a theater as an additional attraction.
- Find a trip lasting at least 14 days, conducted in the English language.
- Find a trip led by someone who can speak Spanish, Polish, and English. It should be an all-inclusive trip to Egypt. Additional extreme-scale attractions like scorpion workshops are welcome.
- Find a trip suitable for a family that will satisfy both children and parents. Low-risk additional attractions, and recreational trips, in Poland.

## Exclusions:
The database does not focus on selecting trips for organized groups that have multiple preferences regarding the type of trip.

The decision on the type of trip the group wants to take must be made independently.

The database does not have separate fields for booking tickets to the planned tour destinations or accommodations. All costs are included in one place, in the "WYCIECZKA" ("TRIP") entity under the attribute "Cena za os." ("Price per person").

![obraz](https://github.com/AgnieszkaDelmaczynska/databases/assets/105732925/4fb447f9-ce0b-42e6-a4b7-12165586fb53)
