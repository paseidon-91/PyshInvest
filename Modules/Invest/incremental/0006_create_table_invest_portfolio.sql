/* Formatted on 08/11/2020 13:38:33 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.portfolio
(
    id                INTEGER NOT NULL,
    portfolio_code    VARCHAR2 (32) NOT NULL,
    user_id           INTEGER NOT NULL
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

COMMENT ON TABLE invest.portfolio IS
    '���������� �� �������������� ��������';

COMMENT ON COLUMN invest.portfolio.portfolio_code IS
    '������� ����������� ��� ��� ��������';
COMMENT ON COLUMN invest.portfolio.user_id IS
    '������������� ������������, �� �������� ������� ��������';