package autocomplete

class Transaction {

    static def scaffold = true

    Long txNumber
    String description
    BigDecimal amount
    Date date
    Project project

    static constraints = {
    }
}
