import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ScriptTools"
    Depends { name: "Qt"; submodules: ["core", "script", "gui"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib64/libQtScript.so.4.8.7", "/usr/lib64/libQtGui.so.4.8.7", "/usr/lib64/libQtCore.so.4.8.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "QtScriptTools"
    libNameForLinkerRelease: "QtScriptTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtScriptTools.so.4.8.7"
    cpp.defines: ["QT_SCRIPTTOLS_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtScriptTools"]
    cpp.libraryPaths: []
    
}
