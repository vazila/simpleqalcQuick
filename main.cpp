//libqalculate includes
#include <iostream>
#include "/home/avi/git/workingOn/libqalcualte/libqalculate-0.9.7/libqalculate/Calculator.h"

//QtQuick includes
#include <QApplication>
#include <QtDeclarative>
#include <QQmlApplicationEngine>

using namespace std;

void calc(string toCalc)
{
    cout << "Hello Worldee #" << endl;
}

int main(int argc, char *argv[])
{
    //load main.qml
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    //Create Calculator and load definitions
    new Calculator();
    CALCULATOR->loadGlobalDefinitions();
    CALCULATOR->loadLocalDefinitions();
    EvaluationOptions eo;

    //Calculate result
    MathStructure result = CALCULATOR->calculate("3x+2=5", eo);

    //Print result
    PrintOptions po;
    result.format(po);
    string result_str = result.print(po);
    int exitCode = app.exec();
    cout << "Hello Worldee #" << result_str << endl;
    return exitCode;
}
