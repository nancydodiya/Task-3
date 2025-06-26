USE pet_adoption;
SELECT * FROM shelter;

SELECT name, species, age 
FROM pet;

SELECT name, species, status 
FROM pet 
WHERE status = 'available';

SELECT name, species, age 
FROM pet 
WHERE species = 'dog' AND age BETWEEN 1 AND 5;

SELECT name, species 
FROM pet 
WHERE species = 'cat' OR species = 'bird';

SELECT first_name, last_name, email 
FROM adopter 
WHERE first_name LIKE 'A%';

SELECT name, species, age 
FROM pet 
WHERE age IS NOT NULL 
ORDER BY age ASC;

SELECT p.name AS pet_name, a.first_name, a.last_name, ad.adoption_date 
FROM adoption ad 
JOIN pet p ON ad.pet_id = p.pet_id 
JOIN adopter a ON ad.adopter_id = a.adopter_id 
ORDER BY ad.adoption_date DESC 
LIMIT 2;

SELECT s.name AS shelter_name, p.name AS pet_name, p.species 
FROM shelter s 
JOIN pet p ON s.shelter_id = p.shelter_id 
WHERE p.status = 'available';

SELECT first_name, last_name, email 
FROM adopter 
WHERE email LIKE '%email.com' AND address IS NOT NULL 
ORDER BY last_name ASC;
