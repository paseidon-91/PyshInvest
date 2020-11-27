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
    'Перечень типов (и подтипов) ценных бумаг';

COMMENT ON COLUMN invest.active_type.active_type_name IS
    'Наименование типа (подтипа) ценной бумаги';
COMMENT ON COLUMN invest.active_type.parent_id IS
    'Тип ценной бумаги (актуально для подтипа. Например для подтипа "гос.облигация" будет указан ИД типа "Облигация"';
COMMENT ON COLUMN invest.active_type.commentary IS
    'Комментарий к строке. Для любого рода поясненийы';