include(package.pri)

CONFIG += qt link_pkgconfig
QT -= gui

equals(QT_MAJOR_VERSION, 4) {
    CONFIG += mobility
    MOBILITY += contacts versit
    PKGCONFIG += qtcontacts-sqlite-extensions
}
equals(QT_MAJOR_VERSION, 5) {
    PKGCONFIG += Qt5Contacts Qt5Versit qtcontacts-sqlite-qt5-extensions
    DEFINES *= USING_QTPIM

    # Needed for qt4 moc, which can't handle numeric tests
    DEFINES *= QT_VERSION_5
}
