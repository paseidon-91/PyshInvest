/* Formatted on 08/11/2020 14:30:09 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.order_history
(
    id             INTEGER NOT NULL,
    p_order_id     INTEGER NOT NULL,
    status_id      INTEGER NOT NULL,
    action_date    DATE NOT NULL,
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

COMMENT ON TABLE invest.order_history IS
    '������� ���������� ������� (������ �����)';

COMMENT ON COLUMN invest.order_history.p_order_id IS '�����';
COMMENT ON COLUMN invest.order_history.status_id IS
    '������ ������';
COMMENT ON COLUMN invest.order_history.action_date IS
    '����� ����������� �������';
COMMENT ON COLUMN invest.order_history.commentary IS
    '����������� � ��������';