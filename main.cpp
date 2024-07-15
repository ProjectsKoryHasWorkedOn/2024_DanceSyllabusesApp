#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSqlDatabase>
#include <QtSql>
#include <QSqlQuery>
#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    /*
    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    db.setHostName("az1-ts2.a2hosting.com");
    db.setDatabaseName("krycom_dancers_db");
    db.setUserName("krycom_kory");
    db.setPassword("dJDdkFHDbExWu7WrOeSw");

    // @todo: Make this work
        // @todo: Address this "QSqlDatabase: QMYSQL driver not loaded"
    if (db.open())
    {
        qDebug() << "Connected!";
    }
    else
    {
        qDebug() << "Failed to connect.";
        return 0;
    }
*/

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/Dance_Syllabuses/Main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);



    return app.exec();
}
