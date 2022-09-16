import ballerina/http;

listener http:Listener httpListener = new(9090);

@display {
    label: "",
    id: "200"
}
service /zonalWeather on httpListener {
    resource function post zone() {
        
    }

    resource function delete zonalPrediction() {

    }

    resource function get zonalWeather() {
        
    }
}
