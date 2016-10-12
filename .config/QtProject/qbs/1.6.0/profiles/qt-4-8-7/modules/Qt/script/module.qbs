import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Script"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib64/libQtCore.so.4.8.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "QtScript"
    libNameForLinkerRelease: "QtScript"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtScript.so.4.8.7"
    cpp.defines: ["QT_SCRIPT_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtScript"]
    cpp.libraryPaths: []
    
}
