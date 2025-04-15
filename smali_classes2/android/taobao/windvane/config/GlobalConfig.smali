.class public Landroid/taobao/windvane/config/GlobalConfig;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final DEFAULT_TTID:Ljava/lang/String; = "hybrid@windvane_android_8.5.0"

.field public static final DEFAULT_UA:Ljava/lang/String; = " WindVane/8.5.0"

.field public static final VERSION:Ljava/lang/String; = "8.5.0"

.field private static config:Landroid/taobao/windvane/config/GlobalConfig;

.field public static context:Landroid/app/Application;

.field public static env:Landroid/taobao/windvane/config/EnvEnum;

.field public static isBackground:Z

.field public static zType:Ljava/lang/String;


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private appTag:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private configRates:Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

.field private deleteCorePolicy:I

.field private deviceId:Ljava/lang/String;

.field private disableMultiUnknownCrash:Z

.field private groupName:Ljava/lang/String;

.field private groupVersion:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private injected:I

.field private needSpeed:Z

.field private open4GDownload:Z

.field private open5GDownload:Z

.field private openUCDebug:Z

.field private reducePermission:Z

.field private ttid:Ljava/lang/String;

.field private uc7ZPath:Ljava/lang/String;

.field private ucCoreOuterControl:Z

.field private ucCoreWaitMills:I

.field private ucDownloadChecker:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ucHASettings:Landroid/taobao/windvane/config/UCHASettings;

.field private ucLibDir:Ljava/lang/String;

.field private ucSdkInternationalEnv:Z

.field private ucsdkappkeySec:[Ljava/lang/String;

.field private useGlobalUrlConfig:Z

.field private zcacheOldConfig:Z

.field private zcacheSpeed:Z

.field private zcacheType3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    sput-object v0, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Landroid/taobao/windvane/config/GlobalConfig;->isBackground:Z

    const-string v0, "2"

    .line 3
    sput-object v0, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucLibDir:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->uc7ZPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucSdkInternationalEnv:Z

    .line 5
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucCoreOuterControl:Z

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucsdkappkeySec:[Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->needSpeed:Z

    .line 8
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheSpeed:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->openUCDebug:Z

    .line 10
    new-instance v2, Landroid/taobao/windvane/config/UCHASettings;

    invoke-direct {v2}, Landroid/taobao/windvane/config/UCHASettings;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucHASettings:Landroid/taobao/windvane/config/UCHASettings;

    .line 11
    new-instance v2, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

    invoke-direct {v2}, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/config/GlobalConfig;->configRates:Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

    .line 12
    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheOldConfig:Z

    .line 13
    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheType3:Z

    .line 14
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->open4GDownload:Z

    const/16 v0, 0xfa0

    .line 15
    iput v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucCoreWaitMills:I

    .line 16
    iput v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->deleteCorePolicy:I

    .line 17
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->disableMultiUnknownCrash:Z

    .line 18
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->useGlobalUrlConfig:Z

    .line 19
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->open5GDownload:Z

    .line 20
    iput-boolean v1, p0, Landroid/taobao/windvane/config/GlobalConfig;->reducePermission:Z

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->injected:I

    return-void
.end method

.method public static getCdnConfigUrlPre()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getH5Host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bizcache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCdnHost()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://h5."

    goto :goto_0

    :cond_0
    const-string v1, "http://h5."

    .line 2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".taobao.com"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getH5Host()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://h5."

    goto :goto_0

    :cond_0
    const-string v0, "http://h5."

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v0}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".taobao.com"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/config/GlobalConfig;
    .locals 2

    const-class v0, Landroid/taobao/windvane/config/GlobalConfig;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->config:Landroid/taobao/windvane/config/GlobalConfig;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->config:Landroid/taobao/windvane/config/GlobalConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/GlobalConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/GlobalConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/GlobalConfig;->config:Landroid/taobao/windvane/config/GlobalConfig;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->config:Landroid/taobao/windvane/config/GlobalConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMtopUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".taobao.com/rest/api3.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowReducePermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->reducePermission:Z

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigRates()Landroid/taobao/windvane/config/UCHASettings$ConfigRate;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->configRates:Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

    return-object v0
.end method

.method public getDeleteCorePolicy()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->deleteCorePolicy:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->groupVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->injected:I

    return v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getUc7ZPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->uc7ZPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUcCoreWaitMills()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucCoreWaitMills:I

    return v0
.end method

.method public getUcDownloadChecker()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucDownloadChecker:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method public getUcHASettings()Landroid/taobao/windvane/config/UCHASettings;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucHASettings:Landroid/taobao/windvane/config/UCHASettings;

    return-object v0
.end method

.method public getUcLibDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public getUcsdkappkeySec()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucsdkappkeySec:[Ljava/lang/String;

    return-object v0
.end method

.method public initParams(Landroid/taobao/windvane/config/WVAppParams;)Z
    .locals 1

    if-eqz p1, :cond_6

    .line 1
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ttid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hybrid@windvane_android_8.5.0"

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ttid:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ttid:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ttid:Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->imei:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->imei:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->imsi:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->imsi:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->deviceId:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appKey:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->appSecret:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appSecret:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->appTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appTag:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->appVersion:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/config/GlobalConfig;->setUcsdkappkeySec([Ljava/lang/String;)V

    .line 13
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucLibDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucLibDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucLibDir:Ljava/lang/String;

    .line 15
    :cond_1
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->uc7ZPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->uc7ZPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->uc7ZPath:Ljava/lang/String;

    .line 17
    :cond_2
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucSdkInternationalEnv:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucSdkInternationalEnv:Z

    .line 18
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->needSpeed:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->needSpeed:Z

    .line 19
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->zcacheSpeed:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheSpeed:Z

    .line 20
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->openUCDebug:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->openUCDebug:Z

    .line 21
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucHASettings:Landroid/taobao/windvane/config/UCHASettings;

    if-eqz v0, :cond_3

    .line 22
    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucHASettings:Landroid/taobao/windvane/config/UCHASettings;

    .line 23
    :cond_3
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->configRates:Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

    if-eqz v0, :cond_4

    .line 24
    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->configRates:Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

    .line 25
    :cond_4
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->zcacheOldConfig:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheOldConfig:Z

    .line 26
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->zcacheType3:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheType3:Z

    .line 27
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->open4GDownload:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->open4GDownload:Z

    .line 28
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->open5GDownload:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->open5GDownload:Z

    .line 29
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucCoreOuterControl:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucCoreOuterControl:Z

    .line 30
    iget v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucCoreWaitMills:I

    iput v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucCoreWaitMills:I

    .line 31
    iget v0, p1, Landroid/taobao/windvane/config/WVAppParams;->deleteCorePolicy:I

    iput v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->deleteCorePolicy:I

    .line 32
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->disableMultiUnknownCrash:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->disableMultiUnknownCrash:Z

    .line 33
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVAppParams;->useGlobalUrlConfig:Z

    iput-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->useGlobalUrlConfig:Z

    .line 34
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->ucDownloadChecker:Ljava/util/concurrent/Callable;

    iput-object v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucDownloadChecker:Ljava/util/concurrent/Callable;

    .line 35
    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVAppParams;->reducePermission:Z

    iput-boolean p1, p0, Landroid/taobao/windvane/config/GlobalConfig;->reducePermission:Z

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "initParams error, appKey is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public isDisableMultiUnknownCrash()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->disableMultiUnknownCrash:Z

    return v0
.end method

.method public isOpen4GDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->open4GDownload:Z

    return v0
.end method

.method public isOpen5GDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->open5GDownload:Z

    return v0
.end method

.method public isUcCoreOuterControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucCoreOuterControl:Z

    return v0
.end method

.method public isUcSdkInternationalEnv()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucSdkInternationalEnv:Z

    return v0
.end method

.method public isUseGlobalUrlConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->useGlobalUrlConfig:Z

    return v0
.end method

.method public isZcacheType3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheType3:Z

    return v0
.end method

.method public needSpeed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->needSpeed:Z

    return v0
.end method

.method public openUCDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->openUCDebug:Z

    return v0
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/GlobalConfig;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setGroupVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/GlobalConfig;->groupVersion:Ljava/lang/String;

    return-void
.end method

.method public setInjectCode(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->injected:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/taobao/windvane/config/GlobalConfig;->injected:I

    return-void
.end method

.method public setUc7ZPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/GlobalConfig;->uc7ZPath:Ljava/lang/String;

    return-void
.end method

.method public setUcsdkappkeySec([Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/GlobalConfig;->ucsdkappkeySec:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public useZcacheOldConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/GlobalConfig;->zcacheOldConfig:Z

    return v0
.end method
