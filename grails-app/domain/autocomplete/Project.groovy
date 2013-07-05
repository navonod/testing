package autocomplete

class Project {

    String name;
    Town town;
    Date startDate;
    Date endDate;

    static hasMany = [transactions: Transaction]

    static constraints = {
        town nullable: true
    }
}
