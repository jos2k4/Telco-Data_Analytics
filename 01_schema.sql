-- Customer information
CREATE TABLE customer(
                         customer_id INTEGER PRIMARY KEY AUTOINCREMENT ,
                         name TEXT,
                         surname TEXT,
                         zip_code INTEGER,
                         registration_date DATE
);

-- available plans
CREATE TABLE Plans(
                      Plan_id INTEGER PRIMARY KEY AUTOINCREMENT ,
                      Plan_name TEXT,
                      Plan_price DECIMAL(10,2),
                      data_limit_GB INTEGER
);

--active contracts
CREATE TABLE Contracts(
                    Contract_ID INTEGER PRIMARY KEY AUTOINCREMENT,
                    customer_id INTEGER,
                    Plan_id INTEGER,
                    Status TEXT, --'Active' or 'Canceled'
                    Device_Option TEXT, -- 'iPhone', 'Android' or 'Sim-Only'
                    Start_date DATE,
                    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
                    FOREIGN KEY (Plan_id) REFERENCES Plans(Plan_id)

);

--usage logs
CREATE TABLE usage(
    Log_id INTEGER PRIMARY KEY AUTOINCREMENT ,
    Contract_id INTEGER,
    Billing_Month TEXT,
    GB_consumed DECIMAL(10, 2),
    FOREIGN KEY (Contract_ID) REFERENCES Contracts(Contract_ID)
)
