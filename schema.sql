-- Sales & Revenue Performance Analytics
-- PostgreSQL-compatible schema
CREATE TABLE sales_orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    city VARCHAR(50),
    region VARCHAR(30),
    category VARCHAR(50),
    product VARCHAR(80),
    channel VARCHAR(30),
    customer_segment VARCHAR(30),
    quantity INT,
    unit_price NUMERIC(12,2),
    gross_sales NUMERIC(14,2),
    discount_amount NUMERIC(14,2),
    discount_pct NUMERIC(6,2),
    net_sales NUMERIC(14,2),
    cogs NUMERIC(14,2),
    shipping_cost NUMERIC(12,2),
    marketing_cost NUMERIC(12,2),
    profit NUMERIC(14,2),
    order_status VARCHAR(20),
    customer_rating NUMERIC(3,1),
    payment_method VARCHAR(30)
);

-- Import the CSV with your database's preferred bulk-load method.
