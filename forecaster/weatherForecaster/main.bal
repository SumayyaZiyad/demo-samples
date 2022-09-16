import ballerina/http;
import ballerina/random;

listener http:Listener httpListener = new(5050);

@display {
    label: "",
    id: "100"
}
service /weather on httpListener {
    resource function get forecast() returns WeatherStatus | error? {
        int checker = check random:createIntInRange(1, 100);
        WeatherStatus status;

        if (checker < 30) {
            status = {
                adversity: "LOW",
                duration: 120,
                accuracy: 85
            };
        } else if (checker < 80) {
            status = {
                adversity: "MEDIUM",
                duration: 180,
                accuracy: 80
            };
        } else {
            status = {
                adversity: "HIGH",
                duration: 240,
                accuracy: 50
            };
        }

        return status;
    }

    resource function post update () {
        
    }

    resource function put climateChange() {
        
    }
}
