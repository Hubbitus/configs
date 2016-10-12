import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Declarative"
    Depends { name: "Qt"; submodules: ["core", "gui", "script"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib64/libQtScript.so.4.8.7", "/usr/lib64/libQtSvg.so.4.8.7", "/usr/lib64/libQtSql.so.4.8.7", "/usr/lib64/libQtXmlPatterns.so.4.8.7", "/usr/lib64/libQtGui.so.4.8.7", "/usr/lib64/libQtNetwork.so.4.8.7", "/usr/lib64/libQtCore.so.4.8.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "QtDeclarative"
    libNameForLinkerRelease: "QtDeclarative"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtDeclarative.so.4.8.7"
    cpp.defines: {
        var result = ["QT_DECLARATIVE_LIB"];
        if (qmlDebugging)
            result.push("QT_DECLARATIVE_DEBUG");
        return result;
    }
    cpp.includePaths: ["/usr/include", "/usr/include/QtDeclarative"]
    cpp.libraryPaths: []
    property bool qmlDebugging: false
    property string qmlPath
    property string qmlImportsPath: "/usr/lib64/qt4/imports"
}
