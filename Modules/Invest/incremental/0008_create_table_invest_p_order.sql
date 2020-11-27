/* Formatted on 08/11/2020 14:31:52 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.p_order
(
    id             INTEGER NOT NULL,
    parent_id      INTEGER,
    active_id      INTEGER NOT NULL,
    account_id     INTEGER NOT NULL,
    count          NUMBER (38, 2) NOT NULL,
    price          NUMBER (38, 2) NOT NULL
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

COMMENT ON TABLE invest.p_order IS
    '������� ���������� ������� (������ �����)';

COMMENT ON COLUMN invest.p_order.parent_id IS
    '��������� ��� �������� ������: ������ �����. ���� �� ������� - ������ ��� ������ ������������';
COMMENT ON COLUMN invest.p_order.active_id IS '������ �� �����';
COMMENT ON COLUMN invest.p_order.account_id IS
    '������ �� ���� ��������';
COMMENT ON COLUMN invest.p_order.count IS
    '������ ������ (���������� �����)';
COMMENT ON COLUMN invest.p_order.price IS
    '���� ���������� ������';