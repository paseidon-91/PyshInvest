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
    'Таблица допустимых активов (ценных бумаг)';

COMMENT ON COLUMN invest.p_order.parent_id IS
    'Основания для создания заказа: другой заказ. Если не указано - считай что запрос пользователя';
COMMENT ON COLUMN invest.p_order.active_id IS 'Ссылка на актив';
COMMENT ON COLUMN invest.p_order.account_id IS
    'Ссылка на счет портфеля';
COMMENT ON COLUMN invest.p_order.count IS
    'Размер сделки (количество бумаг)';
COMMENT ON COLUMN invest.p_order.price IS
    'Цена проведения сделки';