package autocomplete

import grails.converters.JSON

class TownService {

    def findByNameLike() {

        def towns = Town.findAllByNameLike("%${params.query}%").collect{[name: it.name]}
        def result = towns.each {town ->
            town: town.name
        }
        result as JSON
    }
}
