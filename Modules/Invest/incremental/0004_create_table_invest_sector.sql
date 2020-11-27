/* Formatted on 08/11/2020 13:21:14 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.sector
(
    id             INTEGER NOT NULL,
    sector_name    VARCHAR2 (128) NOT NULL,
    is_cycle       INTEGER NOT NULL
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

COMMENT ON TABLE invest.sector IS '������� ������ �����';

COMMENT ON COLUMN invest.sector.sector_name IS
    '������������ �������';
COMMENT ON COLUMN invest.sector.is_cycle IS
    '������� ����������� �������';