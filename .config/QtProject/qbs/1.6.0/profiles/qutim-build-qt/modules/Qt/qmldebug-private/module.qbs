import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDebug"
    Depends { name: "Qt"; submodules: ["core-private", "network", "packetprotocol-private", "qml-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QmlDebug"
    libNameForLinkerRelease: "Qt5QmlDebug"
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: ["QT_QMLDEBUG_LIB"]
    cpp.includePaths: ["/usr/include/qt5", "/usr/include/qt5/QtQmlDebug", "/usr/include/qt5/QtQmlDebug/5.7.0", "/usr/include/qt5/QtQmlDebug/5.7.0/QtQmlDebug"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
