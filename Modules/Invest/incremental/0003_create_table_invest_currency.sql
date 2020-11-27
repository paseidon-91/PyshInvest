/* Formatted on 08/11/2020 13:14:18 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.currency
(
    id               INTEGER NOT NULL,
    currency_name    VARCHAR2 (128) NOT NULL,
    currency_code    VARCHAR2 (16) NOT NULL,
    symbol           VARCHAR2 (16)
)
TABLESPACE invest_tablespace';
EXCEPTION
    WHEN OTHERS
    THEN
        IF SQLCODE = -00955
        THEN
            NULL;
        ELSE
            RAISE;
        END IF;
END;

COMMENT ON TABLE invest.currency IS 'Справочник валют';

COMMENT ON COLUMN invest.currency.currency_name IS
    'Наименование валюты';
COMMENT ON COLUMN invest.currency.currency_code IS
    'Код валюты (например RUR)';
COMMENT ON COLUMN invest.currency.symbol IS
    'Символ обозначения валюты';