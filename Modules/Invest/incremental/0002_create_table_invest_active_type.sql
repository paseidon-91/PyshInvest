/* Formatted on 08/11/2020 13:08:26 (QP5 v5.354) */
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE invest.active_type
(
    id                  INTEGER NOT NULL,
    active_type_name    VARCHAR2 (128),
    parent_id           INTEGER,
    commentary          VARCHAR2 (128)
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

COMMENT ON TABLE invest.active_type IS
    '�������� ����� (� ��������) ������ �����';

COMMENT ON COLUMN invest.active_type.active_type_name IS
    '������������ ���� (�������) ������ ������';
COMMENT ON COLUMN invest.active_type.parent_id IS
    '��� ������ ������ (��������� ��� �������. �������� ��� ������� "���.���������" ����� ������ �� ���� "���������"';
COMMENT ON COLUMN invest.active_type.commentary IS
    '����������� � ������. ��� ������ ���� ����������';