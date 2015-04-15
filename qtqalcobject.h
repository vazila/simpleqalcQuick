#ifndef QTQALCOBJECT_H
#define QTQALCOBJECT_H

#include <QObject>
#include <iostream>


class QtQalcObject : public QObject
{
    Q_OBJECT
public:
    explicit QtQalcObject(QObject *parent = 0);
    ~QtQalcObject();
    Q_INVOKABLE void calc(){
        std::cout << "Hello Worldee #" << std::endl;
       }
signals:

public slots:
};

#endif // QTQALCOBJECT_H
