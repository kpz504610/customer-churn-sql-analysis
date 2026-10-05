-- Customer Churn Analysis


-- 1. Count Total Customers

SELECT COUNT(customerID)
FROM customer;


-- 2. Count Churned Customers

SELECT COUNT(customerID)
FROM customer
WHERE Churn = 'Yes';


-- 3. Overall Churn Rate

SELECT
    COUNT(customerID) * 100.0 /
    (SELECT COUNT(customerID) FROM customer) AS churn_rate
FROM customer
WHERE Churn = 'Yes';


-- 4. Churn Rate by Contract

SELECT
    Contract,
    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS churn_rate
FROM customer
GROUP BY Contract;


-- 5. Churn Rate by Payment Method

SELECT
    PaymentMethod,
    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS churn_rate
FROM customer
GROUP BY PaymentMethod;


-- 6. Churn Rate by Tenure Group

SELECT
    CASE
        WHEN Tenure <= 12 THEN 'New Customer'
        WHEN Tenure <= 48 THEN 'Existing Customer'
        ELSE 'Long-term Customer'
    END AS tenure_group,

    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0,
        2
    ) AS churn_rate
FROM customer
GROUP BY tenure_group;


-- 7. Churn Rate by Online Security

SELECT
    OnlineSecurity,
    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS churn_rate
FROM customer
WHERE OnlineSecurity IN ('Yes', 'No')
GROUP BY OnlineSecurity;


-- 8. Churn Rate by Online Backup

SELECT
    OnlineBackup,
    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0,
        2
    ) AS churn_rate
FROM customer
WHERE OnlineBackup IN ('Yes', 'No')
GROUP BY OnlineBackup;


-- 9. Churn Rate by Device Protection

SELECT
    DeviceProtection,
    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0,
        2
    ) AS churn_rate
FROM customer
WHERE DeviceProtection IN ('Yes', 'No')
GROUP BY DeviceProtection;


-- 10. Churn Rate by Tech Support

SELECT
    TechSupport,
    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0,
        2
    ) AS churn_rate
FROM customer
WHERE TechSupport IN ('Yes', 'No')
GROUP BY TechSupport;


-- 11. Churn Rate by Contract and Tenure Group

SELECT
    Contract,
    CASE
        WHEN Tenure <= 12 THEN 'New Customer'
        WHEN Tenure <= 48 THEN 'Existing Customer'
        ELSE 'Long-term Customer'
    END AS tenure_group,

    COUNT(customerID) AS customer_count,

    ROUND(
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0,
        2
    ) AS churn_rate
FROM customer
GROUP BY
    Contract,
    tenure_group;