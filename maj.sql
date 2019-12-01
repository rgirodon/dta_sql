-- Insert new office in Barcelona
INSERT INTO offices (
    officeCode,
    city,
    addressLine1,
    country,    
    phone,
    postalCode,
    territory
  )
VALUES
  (
    8,
    'Barcelona',
    'La Rambla',
    'Spain',
    '+35 45 456 789',
    '65400',
    'Catalunya'
  );

  -- Update Diane Murphy's email (empolyee #1002)
UPDATE employees SET email = 'diane.murphy@gmail.com' 
               WHERE employeeNumber = 1002;

-- Delete Barcelona office
DELETE FROM offices WHERE officeCode = 8;


