import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XmlPatterns"
    Depends { name: "Qt"; submodules: ["core", "network"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib64/libQtNetwork.so.4.8.7", "/usr/lib64/libQtCore.so.4.8.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "QtXmlPatterns"
    libNameForLinkerRelease: "QtXmlPatterns"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtXmlPatterns.so.4.8.7"
    cpp.defines: ["QT_XMLPATTERNS_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtXmlPatterns"]
    cpp.libraryPaths: []
    
}
