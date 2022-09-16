type User record {
    string name;
    Address address;
    int contact;
    Profile[] profile;
};

type Student record {
    *User;
    int studentID;
    string course;
};

type Address record{
    string number;
    string lane;
    string city;
    int postalCode;
};

type Profile record {
    string 'type;
    string manager;
};
