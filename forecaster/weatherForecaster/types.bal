public type WeatherStatus record {
    Adversity adversity;
    int duration;
    decimal accuracy;
    Zone[] zone?;
};

public enum Adversity {
    HIGH,
    MEDIUM,
    LOW
}

public type Zone record {
    string zone;
    int zoneID;
};
