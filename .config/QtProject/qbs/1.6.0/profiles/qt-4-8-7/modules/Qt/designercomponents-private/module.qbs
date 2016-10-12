import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "DesignerComponents"
    Depends { name: "Qt"; submodules: ["core", "gui-private", "designer-private"]}

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
    libNameForLinkerDebug: "QtDesignerComponents"
    libNameForLinkerRelease: "QtDesignerComponents"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib64/libQtDesignerComponents.so.4.8.7"
    cpp.defines: ["QT_DESIGNERCOMPONENTS-PRIVATE_LIB"]
    cpp.includePaths: ["/usr/include", "/usr/include/QtDesignerComponents"]
    cpp.libraryPaths: []
    
}
