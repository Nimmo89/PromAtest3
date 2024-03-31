public class Counter implements AutoCloseable {
    private int count;

    public Counter() {
        this.count = 0;
    }

    public void add() {
        count++;
    }

    public int getCount() {
        return count;
    }

    @Override
    public void close() {
        if (count == 0) {
            throw new IllegalStateException("Ресурс остался открыт или работа с объектом типа Counter не была в блоке try-with-resources.");
        }
    }
}
