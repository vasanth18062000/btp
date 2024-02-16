// @impl:'\srv\lib\example-service.js'
service capire { 

    entity District {
        key ID:Integer;
        name :String;
        populationCount:Integer64;
        state:String;
        country:String;
    }

    /**
     * This Project is for trying out all the topics in capire
     */
}