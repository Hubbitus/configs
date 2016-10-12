import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Help"
    Depends { name: "Qt"; submodules: ["core", "network", "sql"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib64/libQtSql.so.4.8.7", "/usr/lib64/libQtGui.so.4.8.7", "/usr/lib64/libQtNetwork.so.4.8.7", "/usr/lib64/libQtCore.so.4.8.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "QtHelp"
    libNameForLinkerRelease: "QtHelp"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtHelp.so.4.8.7"
    cpp.defines: ["QT_HELP_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtHelp"]
    cpp.libraryPaths: []
    
}
