.class public Landroid/taobao/windvane/config/WVAppParams;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public appTag:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public configRates:Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

.field public deleteCorePolicy:I

.field public deviceId:Ljava/lang/String;

.field public disableMultiUnknownCrash:Z

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public needSpeed:Z

.field public open4GDownload:Z

.field public open5GDownload:Z

.field public openUCDebug:Z

.field public reducePermission:Z

.field public ttid:Ljava/lang/String;

.field public uc7ZPath:Ljava/lang/String;

.field public ucCoreOuterControl:Z

.field public ucCoreWaitMills:I

.field public ucDownloadChecker:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ucHASettings:Landroid/taobao/windvane/config/UCHASettings;

.field public ucLibDir:Ljava/lang/String;

.field public ucSdkInternationalEnv:Z

.field public ucsdkappkeySec:[Ljava/lang/String;

.field public useGlobalUrlConfig:Z

.field public zcacheOldConfig:Z

.field public zcacheSpeed:Z

.field public zcacheType3:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucLibDir:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/config/WVAppParams;->uc7ZPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucSdkInternationalEnv:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Landroid/taobao/windvane/config/WVAppParams;->needSpeed:Z

    .line 7
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->zcacheSpeed:Z

    .line 8
    iput-boolean v1, p0, Landroid/taobao/windvane/config/WVAppParams;->openUCDebug:Z

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->zcacheOldConfig:Z

    .line 10
    iput-boolean v1, p0, Landroid/taobao/windvane/config/WVAppParams;->zcacheType3:Z

    .line 11
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->open4GDownload:Z

    .line 12
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->open5GDownload:Z

    .line 13
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucCoreOuterControl:Z

    const/16 v1, 0xfa0

    .line 14
    iput v1, p0, Landroid/taobao/windvane/config/WVAppParams;->ucCoreWaitMills:I

    .line 15
    iput v0, p0, Landroid/taobao/windvane/config/WVAppParams;->deleteCorePolicy:I

    .line 16
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->disableMultiUnknownCrash:Z

    .line 17
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->useGlobalUrlConfig:Z

    .line 18
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->reducePermission:Z

    return-void
.end method
