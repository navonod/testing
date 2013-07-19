package autocomplete

class Town {

    String name

    public Town(def name) {
        this.name = name
    }

    static constraints = {
    }

    String toString() {
        return this.name
    }
}
