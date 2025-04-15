.class public Landroid/taobao/windvane/extra/uc/WVCoreSettings;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final DOWNLOAD:I = 0x1

.field public static final INNER:I = 0x0

.field public static final U420:I = 0x2

.field public static final U430:I = 0x3

.field private static instance:Landroid/taobao/windvane/extra/uc/WVCoreSettings;


# instance fields
.field public coreEventCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/webview/CoreEventCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->instance:Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->instance:Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;-><init>()V

    sput-object v1, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->instance:Landroid/taobao/windvane/extra/uc/WVCoreSettings;

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
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->instance:Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    return-object v0
.end method

.method public static setCorePolicy(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput p0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    return-void
.end method

.method public static setDownloadCore(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput p0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->downloadCoreType:I

    return-void
.end method

.method public static setGpuMultiPolicy(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput p0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    return-void
.end method

.method public static setInputSupportedDomains(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    iput-object p0, v0, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    return-void
.end method

.method public static setWebMultiPolicy(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput p0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    return-void
.end method


# virtual methods
.method public setCoreEventCallback(Landroid/taobao/windvane/webview/CoreEventCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/CoreEventCallback;->onUCCorePrepared()V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
