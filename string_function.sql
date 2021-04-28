SELECT id,
       LOWER(name) as 'Name Lower',
       UPPER(name) as 'Name Upper',
       LENGTH(name) as 'Name Length'
FROM products;