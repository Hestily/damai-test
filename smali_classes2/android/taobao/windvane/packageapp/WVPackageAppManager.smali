.class public Landroid/taobao/windvane/packageapp/WVPackageAppManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static appManager:Landroid/taobao/windvane/packageapp/WVPackageAppManager;


# instance fields
.field private updateFinishCallback:Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/packageapp/WVPackageAppManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->appManager:Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->appManager:Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/WVPackageAppManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->appManager:Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->appManager:Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    return-object v0
.end method


# virtual methods
.method public getUpdateFinishCallback()Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->updateFinishCallback:Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;

    return-object v0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Landroid/taobao/windvane/packageapp/adaptive/InitZCacheTask;

    invoke-direct {p2}, Landroid/taobao/windvane/packageapp/adaptive/InitZCacheTask;-><init>()V

    .line 3
    check-cast p1, Landroid/app/Application;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/taobao/windvane/packageapp/adaptive/InitZCacheTask;->init(Landroid/app/Application;Ljava/util/HashMap;)V

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/WVLocaleConfig;->getInstance()Landroid/taobao/windvane/config/WVLocaleConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/config/WVLocaleConfig;->init()V

    .line 5
    invoke-static {}, Lcom/taobao/zcache/ZCacheInitTask;->getInstance()Lcom/taobao/zcache/ZCacheInitTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/zcache/ZCacheInitTask;->init()V

    .line 6
    invoke-static {}, Lcom/taobao/zcache/ZCacheSDK;->initExtra()V

    .line 7
    invoke-static {}, Lcom/taobao/zcache/ZCacheInitializer;->initConfig()V

    .line 8
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object p1

    const-string/jumbo p2, "preloadpackageapp.zip"

    invoke-virtual {p1, p2}, Lcom/taobao/zcache/ZCacheManager;->installPreload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerUpdateFinishCallback(Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->updateFinishCallback:Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;

    return-void
.end method

.method public setPackageZipPrefixAdapter(Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/taobao/windvane/packageapp/WVPackageAppService;->setPackageZipPrefixAdapter(Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;)V

    return-void
.end method
