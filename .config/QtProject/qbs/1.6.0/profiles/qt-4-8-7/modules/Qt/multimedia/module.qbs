import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Multimedia"
    Depends { name: "Qt"; submodules: ["core", "gui", "network"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib64/libQtGui.so.4.8.7", "/usr/lib64/libQtCore.so.4.8.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "QtMultimedia"
    libNameForLinkerRelease: "QtMultimedia"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtMultimedia.so.4.8.7"
    cpp.defines: ["QT_MULTIMEDIA_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtMultimedia"]
    cpp.libraryPaths: []
    
}
