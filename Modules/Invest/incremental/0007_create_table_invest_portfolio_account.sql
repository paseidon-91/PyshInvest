/* Formatted on 08/11/2020 13:49:16 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.portfolio_account
(
    id              INTEGER NOT NULL,
    portfolio_id    INTEGER NOT NULL,
    currency_id     INTEGER NOT NULL,
    balance         NUMBER (38,2) DEFAULT 0
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

COMMENT ON TABLE invest.portfolio_account IS
    'Счет, привязанный к портфелю';

COMMENT ON COLUMN invest.portfolio_account.portfolio_id IS
    'Идентификатор портфел';
COMMENT ON COLUMN invest.portfolio_account.currency_id IS
    'Идентификатор валюты счета';
COMMENT ON COLUMN invest.portfolio_account.balance IS
    'Баланс счета';