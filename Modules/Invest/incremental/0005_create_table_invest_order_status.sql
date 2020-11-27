/* Formatted on 08/11/2020 13:29:16 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.order_status
(
    id             INTEGER NOT NULL,
    status_name    VARCHAR2 (128),
    commentary     VARCHAR2 (250)
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

COMMENT ON TABLE invest.order_status IS '������� �������';

COMMENT ON COLUMN invest.order_status.status_name IS
    '������������ �������';
COMMENT ON COLUMN invest.order_status.commentary IS
    '����������� � ��������';