import ballerina/http;
import ballerina/io;
import ballerina/random;

public type Response record {
    string message;
    int id;
};

@display {
    label: "",
    id: "1234"
}
service /potato on new http:Listener(7070) {
    resource function get colorado() returns string|error? {
        @display {
            label: "",
            id: "5678"
        }
        http:Client fooClientEndpoint = check new ("http://localhost:8080");
        string resp = check fooClientEndpoint->get("/baz");

        io:println(resp + " called by potato/colorado");
        return "potato/colorado";
    }

    resource function post idaho(string msg) returns Response[] | error? {
        Response output = {
            id: check random:createIntInRange(0, 100),
            message: ""
        };
        return [output];
    }

    resource function put canada() {

    }
}
