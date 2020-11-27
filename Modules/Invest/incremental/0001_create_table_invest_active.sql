/* Formatted on 07/11/2020 20:41:44 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.active
(
    id                INTEGER NOT NULL,
    active_name       VARCHAR2 (128),
    ISIN              VARCHAR2 (32),
    active_type_id    INTEGER NOT NULL,
    fond_type_id      INTEGER,
    sector_id         INTEGER,
    currency_id       INTEGER NOT NULL
)
TABLESPACE invest_tablespace';
EXCEPTION
    WHEN OTHERS THEN
    IF SQLCODE = -00955 THEN
      NULL;
    ELSE
      RAISE;
    END IF;

END;

COMMENT ON TABLE invest.active IS
    'Таблица допустимых активов (ценных бумаг)';

COMMENT ON COLUMN invest.active.active_name IS
    'Наименование ценной бумаги';
COMMENT ON COLUMN invest.active.ISIN IS 'СИСН ценной бумаги';
COMMENT ON COLUMN invest.active.fond_type_id IS
    'Каким фондом управляется';
COMMENT ON COLUMN invest.active.sector_id IS
    'Идентификатор сектора компании - эмитента';
COMMENT ON COLUMN invest.active.currency_id IS
    'Идентификатор валюты актива';