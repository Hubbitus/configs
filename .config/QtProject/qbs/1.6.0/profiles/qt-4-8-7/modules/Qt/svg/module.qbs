import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Svg"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

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
    libNameForLinkerDebug: "QtSvg"
    libNameForLinkerRelease: "QtSvg"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtSvg.so.4.8.7"
    cpp.defines: ["QT_SVG_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtSvg"]
    cpp.libraryPaths: []
    
}
