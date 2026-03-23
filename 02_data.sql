

--Kunden anlegen (customer)
INSERT INTO customer (name, surname, zip_code, registration_date) VALUES
                                                                      ('Max', 'Mustermann', 40474, '2022-01-15'),
                                                                      ('Erika', 'Schmidt', 40210, '2023-05-20'),
                                                                      ('Joshua', 'Testuser', 47623, '2024-02-10'),
                                                                      ('Lukas', 'Netzwerk', 50667, '2021-11-01'),
                                                                      ('Sarah', 'Online', 10115, '2023-12-01');

--Vodafone Tarife anlegen (Plans)
INSERT INTO Plans (Plan_name, Plan_price, data_limit_GB) VALUES
                                                             ('GigaMobil XS', 29.99, 5),
                                                             ('GigaMobil S', 39.99, 12),
                                                             ('GigaMobil M', 49.99, 25),
                                                             ('GigaMobil L', 59.99, 50),
                                                             ('GigaMobil XL', 79.99, 999); -- Unlimited

--Verträge zuordnen (Contracts)
INSERT INTO Contracts (customer_id, Plan_id, Status, Device_Option, Start_date) VALUES
                                                                                    (1, 2, 'Active', 'iPhone', '2022-01-15'),   -- Max hat GigaMobil S
                                                                                    (2, 1, 'Active', 'Sim-Only', '2023-05-20'), -- Erika hat GigaMobil XS
                                                                                    (3, 3, 'Active', 'Android', '2024-02-10'),  -- Joshua hat GigaMobil M
                                                                                    (4, 5, 'Canceled', 'iPhone', '2021-11-01'), -- Lukas hat gekündigt
                                                                                    (5, 2, 'Active', 'Android', '2023-12-01');  -- Sarah hat GigaMobil S

-- Verbrauchsdaten (usage)
-- März 2026.
INSERT INTO usage (Contract_id, Billing_Month, GB_consumed) VALUES
                                                                (1, '2026-03', 11.2), -- Max (Limit 12GB): Fast am Limit! -> Upselling Case
                                                                (2, '2026-03', 4.9),  -- Erika (Limit 5GB): Fast am Limit! -> Upselling Case
                                                                (3, '2026-03', 10.5), -- Joshua (Limit 25GB): Alles okay.
                                                                (5, '2026-03', 3.0);  -- Sarah (Limit 12GB): Nutzt wenig.
