import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "UiTools"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib64/libQtXml.so.4.8.7", "/usr/lib64/libQtGui.so.4.8.7", "/usr/lib64/libQtCore.so.4.8.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "QtUiTools"
    libNameForLinkerRelease: "QtUiTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtUiTools.a"
    cpp.defines: ["QT_UITOOLS_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtUiTools"]
    cpp.libraryPaths: []
    
}
