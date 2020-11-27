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
    'Таблица допустимых активов (ценных бумаг)';

COMMENT ON COLUMN invest.order_history.p_order_id IS 'Заказ';
COMMENT ON COLUMN invest.order_history.status_id IS
    'Статус заказа';
COMMENT ON COLUMN invest.order_history.action_date IS
    'Время выставления статуса';
COMMENT ON COLUMN invest.order_history.commentary IS
    'Комментарий к действию';