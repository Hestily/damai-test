.class public Landroid/taobao/windvane/config/WVCommonConfigData;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public aliNetworkDegradeDomains:[Ljava/lang/String;

.field public brandBlacks:[Ljava/lang/String;

.field public cookieUrlRule:Ljava/lang/String;

.field public customsComboLimit:I

.field public customsDirectQueryLimit:I

.field public disableInstallPeriod_end:J

.field public disableInstallPeriod_start:J

.field public disableMixViews:[Ljava/lang/String;

.field public discardableFreeIfHasGpuDecode:Z

.field public downloadCoreType:I

.field public enableExtImgDecoder:Z

.field public enableGpuGoneReload:Z

.field public enableMimeTypeSet:Z

.field public enablePreStartup:Z

.field public enableSamsungClipboard:Z

.field public enableSgRequestCheck:Z

.field public enableThreadWatchdog:Z

.field public enableUCPrecache:Z

.field public enableUCPrecacheDoc:Z

.field public enableUCUploadToTlog:Z

.field public enableUcShareCore:Z

.field public enableWVFullTrace:Z

.field public enableZCacheAdpter:Z

.field public excludeUCVersions:Ljava/lang/String;

.field public ffmegSoPath:Ljava/lang/String;

.field public filterSgRequestCheck:Z

.field public firstUseSystemWebViewOn7zInit:Z

.field public fixCameraPermission:Z

.field public fixWhitePageBug:Z

.field public gpuMultiPolicy:I

.field public initOldCoreVersions:Ljava/lang/String;

.field public initUCCorePolicy:I

.field public initWebPolicy:I

.field public isAutoRegisterApp:Z

.field public isCheckCleanup:Z

.field public isOpenCombo:Z

.field public isUseAliNetworkDelegate:Z

.field public isUseTBDownloader:Z

.field public keepFullUrl:Z

.field public modelBlacks:[Ljava/lang/String;

.field public monitorStatus:I

.field public monitoredApps:[Ljava/lang/String;

.field public needZipDegrade:Z

.field public open5GAdapter:Z

.field public openExperiment:Z

.field public openLog:Z

.field public openTLog:Z

.field public openUCExperiment:Z

.field public openUCImageExperiment:Z

.field public packageAccessInterval:I

.field public packageAppStatus:I

.field public packageDownloadLimit:I

.field public packageMaxAppCount:I

.field public packagePriorityWeight:D

.field public packageRemoveInterval:I

.field public packageZipPrefix:Ljava/lang/String;

.field public packageZipPreviewPrefix:Ljava/lang/String;

.field public precachePackageName:Ljava/lang/String;

.field public recoverMultiInterval:I

.field public recoveryInterval:I

.field public reduceCameraPermissionOfStorage:Z

.field public reduceGalleryPermissionOfStorageWrite:Z

.field public shareBlankList:Ljava/lang/String;

.field public skipPreRenderBackgroundWhitePage:Z

.field public storeCachedDir:Z

.field public sysZcacheResponseTimeOut:J

.field public systemBlacks:[Ljava/lang/String;

.field public targetSdkAdapte:Z

.field public ucCoreUrl:Ljava/lang/String;

.field public ucMultiRetryTimes:I

.field public ucMultiServiceSpeedUp:Z

.field public ucMultiStartTime:I

.field public ucMultiTimeOut:I

.field public ucParam:Landroid/taobao/windvane/config/UCParamData;

.field public ucSkipOldKernel:Z

.field public ucsdk_alinetwork_rate:D

.field public ucsdk_image_strategy_rate:D

.field public updateInterval:J

.field public uploadPPAfterJs:Z

.field public urlRuleStatus:I

.field public urlScheme:Ljava/lang/String;

.field public useNewThreadPool:Z

.field public useOldBridge:Z

.field public useSystemWebView:Z

.field public useUCPlayer:Z

.field public useURLConfig:Z

.field public v:Ljava/lang/String;

.field public verifySampleRate:Ljava/lang/String;

.field public webMultiPolicy:I

.field public zcacheResponseTimeOut:J

.field public zipDegradeList:Ljava/lang/String;

.field public zipDegradeMode:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->v:Ljava/lang/String;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packagePriorityWeight:D

    const-wide/32 v0, 0x493e0

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->updateInterval:J

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAppStatus:I

    .line 6
    iput v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    .line 7
    iput v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->urlRuleStatus:I

    const-string v0, "http"

    .line 8
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->urlScheme:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->verifySampleRate:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 10
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 11
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->aliNetworkDegradeDomains:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 12
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->disableMixViews:[Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->disableInstallPeriod_start:J

    .line 14
    iput-wide v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->disableInstallPeriod_end:J

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 15
    iput-wide v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_alinetwork_rate:D

    .line 16
    iput-wide v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_image_strategy_rate:D

    .line 17
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->useSystemWebView:Z

    const-string v1, ""

    .line 18
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->cookieUrlRule:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->isOpenCombo:Z

    .line 21
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->isCheckCleanup:Z

    .line 22
    new-instance v3, Landroid/taobao/windvane/config/UCParamData;

    const-string/jumbo v4, "{}"

    invoke-direct {v3, v4}, Landroid/taobao/windvane/config/UCParamData;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    .line 23
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUcShareCore:Z

    .line 24
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->shareBlankList:Ljava/lang/String;

    const/16 v3, 0x1e

    .line 25
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageDownloadLimit:I

    const/16 v3, 0xbb8

    .line 26
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAccessInterval:I

    const v3, 0x19bfcc00

    .line 27
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageRemoveInterval:I

    .line 28
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->recoveryInterval:I

    const/16 v3, 0xa

    .line 29
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->customsDirectQueryLimit:I

    .line 30
    iput v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->customsComboLimit:I

    .line 31
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPrefix:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPreviewPrefix:Ljava/lang/String;

    .line 33
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->isAutoRegisterApp:Z

    .line 34
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->isUseTBDownloader:Z

    .line 35
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->isUseAliNetworkDelegate:Z

    const-string v3, "1.12.11.0, 1.15.15.0, 1.14.13.0, 1.13.12.0"

    .line 36
    iput-object v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->excludeUCVersions:Ljava/lang/String;

    const/16 v3, 0x64

    .line 37
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageMaxAppCount:I

    .line 38
    iput v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeMode:I

    .line 39
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeList:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->useUCPlayer:Z

    .line 41
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucSkipOldKernel:Z

    .line 42
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecache:Z

    .line 43
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->precachePackageName:Ljava/lang/String;

    .line 44
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecacheDoc:Z

    .line 45
    iput v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    const/16 v3, 0x13

    .line 46
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->initWebPolicy:I

    .line 47
    iput v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    .line 48
    iput v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    const/16 v3, 0x1f40

    .line 49
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    const/16 v3, 0x1388

    .line 50
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiStartTime:I

    .line 51
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiServiceSpeedUp:Z

    const-string v3, "3.*"

    .line 52
    iput-object v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->initOldCoreVersions:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->firstUseSystemWebViewOn7zInit:Z

    const/4 v3, 0x3

    .line 54
    iput v3, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->downloadCoreType:I

    .line 55
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->openLog:Z

    .line 56
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->useURLConfig:Z

    .line 57
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->openTLog:Z

    .line 58
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->useOldBridge:Z

    .line 59
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ffmegSoPath:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->systemBlacks:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 61
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->brandBlacks:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 62
    iput-object v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->modelBlacks:[Ljava/lang/String;

    const v1, 0x927c0

    .line 63
    iput v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->recoverMultiInterval:I

    .line 64
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->openExperiment:Z

    .line 65
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCExperiment:Z

    .line 66
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCImageExperiment:Z

    const/4 v1, 0x5

    .line 67
    iput v1, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiRetryTimes:I

    .line 68
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableExtImgDecoder:Z

    .line 69
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->discardableFreeIfHasGpuDecode:Z

    .line 70
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSgRequestCheck:Z

    .line 71
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->filterSgRequestCheck:Z

    .line 72
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->skipPreRenderBackgroundWhitePage:Z

    .line 73
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->fixWhitePageBug:Z

    .line 74
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enablePreStartup:Z

    .line 75
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->useNewThreadPool:Z

    .line 76
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableGpuGoneReload:Z

    .line 77
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    .line 78
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->needZipDegrade:Z

    .line 79
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->targetSdkAdapte:Z

    const-wide/16 v0, 0x14

    .line 80
    iput-wide v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->zcacheResponseTimeOut:J

    .line 81
    iput-wide v0, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->sysZcacheResponseTimeOut:J

    .line 82
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableZCacheAdpter:Z

    .line 83
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableMimeTypeSet:Z

    .line 84
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->keepFullUrl:Z

    .line 85
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->fixCameraPermission:Z

    .line 86
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableThreadWatchdog:Z

    .line 87
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableWVFullTrace:Z

    .line 88
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->reduceCameraPermissionOfStorage:Z

    .line 89
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->reduceGalleryPermissionOfStorageWrite:Z

    .line 90
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->storeCachedDir:Z

    .line 91
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSamsungClipboard:Z

    .line 92
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCUploadToTlog:Z

    .line 93
    iput-boolean v2, p0, Landroid/taobao/windvane/config/WVCommonConfigData;->uploadPPAfterJs:Z

    return-void
.end method
