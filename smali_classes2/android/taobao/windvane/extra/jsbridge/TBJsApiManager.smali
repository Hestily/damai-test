.class public Landroid/taobao/windvane/extra/jsbridge/TBJsApiManager;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initJsApi()V
    .locals 2

    .line 1
    const-class v0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->registerUploadService(Ljava/lang/Class;)V

    .line 2
    const-class v0, Landroid/taobao/windvane/extra/jsbridge/WVServer;

    const-string v1, "WVServer"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    const-class v0, Landroid/taobao/windvane/extra/jsbridge/WVACCS;

    const-string v1, "WVACCS"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    const-class v0, Landroid/taobao/windvane/extra/jsbridge/WVApplication;

    const-string v1, "WVApplication"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5
    const-class v0, Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;

    const-string v1, "WVWebPerformance"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    const-class v0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;

    const-string v1, "WVReporter"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/debug/WVDebug;->init()V

    return-void
.end method
