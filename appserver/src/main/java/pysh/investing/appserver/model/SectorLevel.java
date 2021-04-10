package pysh.investing.appserver.model;

public enum SectorLevel {
    SECTOR("Сектор"),
    INDUSTRY_GROUP("Отраслевая группа"),
    INDUSTRY("Отрасль"),
    SUB_INDUSTRY("Подотрасль");

    private String name;

    SectorLevel(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
