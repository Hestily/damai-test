.class public Landroid/taobao/windvane/jsbridge/api/WVAPI;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/WVAPI$PluginName;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->init()V

    .line 2
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVBase;

    const-string v1, "Base"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVLocation;

    const-string v1, "WVLocation"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVMotion;

    const-string v1, "WVMotion"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVCookie;

    const-string v1, "WVCookie"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVCamera;

    const-string v1, "WVCamera"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUI;

    const-string v1, "WVUI"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVNotification;

    const-string v1, "WVNotification"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;

    const-string v1, "WVNetwork"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUIToast;

    const-string v1, "WVUIToast"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 11
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    const-string v1, "WVUIDialog"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;

    const-string v1, "WVUIActionSheet"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVContacts;

    const-string v1, "WVContacts"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 14
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVReporter;

    const-string v1, "WVReporter"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    const-class v0, Landroid/taobao/windvane/standardmodal/WVStandardEventCenter;

    const-string v1, "WVStandardEventCenter"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVFile;

    const-string v1, "WVFile"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVScreen;

    const-string v1, "WVScreen"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;

    const-string v1, "WVNativeDetector"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 19
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    const-string v1, "WVBluetooth"

    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 20
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;

    const-string v1, "WVBroadcast"

    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 21
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch;

    const-string v1, "Prefetch"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVImage;

    const-string v1, "WVImage"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    const-class v0, Landroid/taobao/windvane/embed/EmbedViewDemo;

    const-string v1, "demo"

    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 24
    const-class v0, Landroid/taobao/windvane/embed/Empty;

    const-string v1, "empty"

    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method
