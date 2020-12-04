#ifndef STORAGE_H
#define STORAGE_H

#include <QObject>
#include <headers/enum_headers.h>

class storage
{
public:
    storage();
    //VARIABLES
    QString name;
    DD_type type;
    DD_capacity capacity;
    int RPM;
    int write_speed;
    int read_speed;
    QString image_link;
    double price;
    QString buy_link;


    //OPERATORS
    bool operator==(storage st);

};

#endif // STORAGE_H
