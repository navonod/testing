import autocomplete.Town

class BootStrap {

    def grailsApplication

    def init = {
        loadTowns()
    }

    def loadTowns() {
        File myFile = grailsApplication.parentContext.getResource("/WEB-INF/resources/towns.txt").file
        myFile.eachLine { line ->
            new Town(line).save(failOnError: true)
        }
    }

    def destroy = {
    }
}
