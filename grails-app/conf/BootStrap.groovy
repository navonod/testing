import autocomplete.Town

class BootStrap {

    def init = {
        loadTowns()
    }

    def loadTowns() {
        new File("conf/towns.txt").eachLine { line ->
            new Town(line).save(failOnError: true)
        }
    }

    def destroy = {
    }
}
