SELECT

CAST(MD5_BINARY(IFNULL((UPPER(TRIM(CAST(CUSTOMER_ID AS VARCHAR)))), '^^')) AS BINARY(16)) AS CUSTOMER_PK,
CAST(MD5_BINARY(CONCAT(
    IFNULL(UPPER(TRIM(CAST(CUSTOMER_DOB AS VARCHAR))), '^^'), '||',
    IFNULL(UPPER(TRIM(CAST(CUSTOMER_ID AS VARCHAR))), '^^'), '||',
    IFNULL(UPPER(TRIM(CAST(CUSTOMER_NAME AS VARCHAR))), '^^') ))
AS BINARY(16)) AS CUST_CUSTOMER_HASHDIFF,
CAST(MD5_BINARY(CONCAT(
    IFNULL(UPPER(TRIM(CAST(CUSTOMER_ID AS VARCHAR))), '^^'), '||',
    IFNULL(UPPER(TRIM(CAST(NATIONALITY AS VARCHAR))), '^^'), '||',
    IFNULL(UPPER(TRIM(CAST(PHONE AS VARCHAR))), '^^') ))
AS BINARY(16)) AS CUSTOMER_HASHDIFF,

'STG_BOOKING' AS SOURCE,
LOADDATE AS EFFECTIVE_FROM,
LOADDATE,
CUSTOMER_ID,
CUSTOMER_DOB,
CUSTOMER_NAME,
NATIONALITY,
PHONE,
TEST_COLUMN_2,
TEST_COLUMN_3,
TEST_COLUMN_4,
TEST_COLUMN_5,
TEST_COLUMN_6,
TEST_COLUMN_7,
TEST_COLUMN_8,
TEST_COLUMN_9

FROM DBT_VAULT.TEST.raw_source