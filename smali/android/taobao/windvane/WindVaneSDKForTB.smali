.class public Landroid/taobao/windvane/WindVaneSDKForTB;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/WindVaneSDKForTB$OrangeRegisterEventLister;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindVaneSDKForTB"

.field public static final TB_UC_SDK_APP_KEY_SEC:[Ljava/lang/String;

.field private static inited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isForeground:Z

.field public static wvAdapter:Landroid/taobao/windvane/extra/WVIAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/taobao/windvane/WindVaneSDKForTB;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "YKIXAXN/9v6Tez0oeIRx9ilCfTkSFozXf+nmGRTPG7ruP1KycnZL8vCcjyaMMGajricmE9blrBlr\nO+HGrJUsuw==\n"

    const-string v1, "RjpgSKj6piHyametkuIC/9mWn1DKkVntRLhh4mOYlf6/g/wO1kioAHE7weTqAdqn05FXCu0dJU+p6pKC6I+k8w=="

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/WindVaneSDKForTB;->TB_UC_SDK_APP_KEY_SEC:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Landroid/taobao/windvane/WindVaneSDKForTB;->wvAdapter:Landroid/taobao/windvane/extra/WVIAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Landroid/taobao/windvane/WindVaneSDKForTB;->isForeground:Z

    return p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;ILandroid/taobao/windvane/config/WVAppParams;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/taobao/windvane/WindVaneSDKForTB;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "InitWindVane"

    if-eqz v0, :cond_4

    const-string v0, "first init"

    .line 2
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v3, p3, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 5
    sget-object v3, Landroid/taobao/windvane/WindVaneSDKForTB;->TB_UC_SDK_APP_KEY_SEC:[Ljava/lang/String;

    iput-object v3, p3, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/taobao/windvane/WindVaneSDK;->init(Landroid/content/Context;Ljava/lang/String;ILandroid/taobao/windvane/config/WVAppParams;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 8
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->getInstance()Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    move-result-object p3

    invoke-virtual {p3, p0, v2}, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->init(Landroid/content/Context;Z)V

    .line 9
    sget-object p3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget p3, p3, Landroid/taobao/windvane/config/WVCommonConfigData;->urlRuleStatus:I

    if-eqz p3, :cond_1

    .line 10
    new-instance p3, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;

    invoke-direct {p3}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterDefault;-><init>()V

    invoke-static {p3}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->registerWVURLIntercepter(Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;)V

    .line 11
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/jsbridge/api/WVAPI;->setup()V

    .line 12
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitor;->init()V

    .line 13
    invoke-static {}, Landroid/taobao/windvane/extra/jsbridge/TBJsApiManager;->initJsApi()V

    .line 14
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 15
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p3

    invoke-static {}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->getInstance()Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;

    move-result-object v2

    sget v3, Landroid/taobao/windvane/service/WVEventService;->WV_BACKWARD_EVENT:I

    invoke-virtual {p3, v2, v3}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 16
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p3

    const/16 v2, 0xbc1

    invoke-virtual {p3, v2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 17
    :cond_2
    new-instance p3, Landroid/taobao/windvane/extra/WVSchemeProcessor;

    invoke-direct {p3}, Landroid/taobao/windvane/extra/WVSchemeProcessor;-><init>()V

    invoke-static {p3}, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->registerWVURLintercepter(Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;)V

    .line 18
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object p3

    new-instance v2, Ltb/vr5;

    invoke-direct {v2}, Ltb/vr5;-><init>()V

    invoke-virtual {p3, v2}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setCrashCaughtListener(Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V

    .line 19
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p3

    new-instance v2, Landroid/taobao/windvane/WindVaneSDKForTB$OrangeRegisterEventLister;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/WindVaneSDKForTB$OrangeRegisterEventLister;-><init>(Landroid/content/Context;)V

    sget p0, Landroid/taobao/windvane/service/WVEventService;->WV_FORWARD_EVENT:I

    invoke-virtual {p3, v2, p0}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 20
    invoke-static {}, Lcom/taobao/application/common/b;->d()Lcom/taobao/application/common/IAppPreferences;

    move-result-object p0

    .line 21
    new-instance p3, Landroid/taobao/windvane/WindVaneSDKForTB$1;

    invoke-direct {p3, p0}, Landroid/taobao/windvane/WindVaneSDKForTB$1;-><init>(Lcom/taobao/application/common/IAppPreferences;)V

    invoke-static {p3}, Lcom/taobao/application/common/b;->a(Lcom/taobao/application/common/IApmEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 22
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/GlobalConfig;->needSpeed()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 23
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p0

    sget-object p3, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {p0, p3}, Landroid/taobao/windvane/config/WVConfigManager;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 24
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 25
    invoke-static {p1, p2, v2, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitWVInitTime(JJ)V

    goto :goto_1

    :cond_4
    const-string/jumbo p0, "windvane has already initiated"

    .line 26
    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
