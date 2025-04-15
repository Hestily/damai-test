.class public Landroid/taobao/windvane/config/UCParamData;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final COMMON_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final DEFAULT_HOST_UCM_VERSIONS:Ljava/lang/String; = ""

.field private static final HIGH_SECURITY_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final HOST_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final LOAD_POLICY_CD_ONLY_LEGAL_VALUE:Ljava/lang/String; = "sc_lshco"

.field private static final OTHER_APPS_CLIENT_UCM_VERSIONS:Ljava/lang/String; = ""

.field private static final SECURITY_CLIENT_UCM_VERSIONS:Ljava/lang/String; = ""


# instance fields
.field public cachePageNumber:I

.field public cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

.field public cdResourceEmbedViewReAttachList:Ljava/lang/String;

.field public discardableLimitBytes:I

.field public discardableReleaseForAllocFailedSwitch:Z

.field public discardableReleaseFreeAfterSecond:I

.field public discardableReleaseFreeAfterTimeSwitch:Z

.field public discardableReleaseFreeUntilByte:I

.field public glLostReloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public glLostUnreloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public grDiscardableLimitByte:I

.field public grResourceCacheLimitByte:I

.field public hostUcmVersionsCd:Ljava/lang/String;

.field public openGPUWatchDogOptimize:Z

.field public scCopyToSdcardCd:Ljava/lang/String;

.field public scLoadPolicyCd:Ljava/lang/String;

.field public scPkgNames:Ljava/lang/String;

.field public scStillUpd:Ljava/lang/String;

.field public scWaitMilts:Ljava/lang/String;

.field public sdCopyPathCd:Ljava/lang/String;

.field public thirtyUcmVersionsCd:Ljava/lang/String;

.field public u4FocusAutoPopupInputHostList:Ljava/lang/String;

.field public ucPageTimerCount:Ljava/lang/String;

.field public webglErrorRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.taobao.taobao"

    const-string v1, "com.youku.phone"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/taobao/windvane/config/UCParamData;->HOST_APP_PACKAGE_NAMES:[Ljava/lang/String;

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/config/UCParamData;->HIGH_SECURITY_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    const-string v0, "com.tmall.wireless"

    const-string v2, "com.huawei.hwvplayer.youku"

    const-string v3, "cn.damai"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/config/UCParamData;->COMMON_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    const-string v0, "0^^*,map,video,camera,ai-camera,canvas"

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    const-string v0, "map"

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedViewReAttachList:Ljava/lang/String;

    const-string v0, "2000"

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->ucPageTimerCount:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->openGPUWatchDogOptimize:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    const/4 v1, 0x5

    .line 9
    iput v1, p0, Landroid/taobao/windvane/config/UCParamData;->cachePageNumber:I

    const/high16 v1, 0x8000000

    .line 10
    iput v1, p0, Landroid/taobao/windvane/config/UCParamData;->discardableLimitBytes:I

    .line 11
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterTimeSwitch:Z

    const/16 v0, 0x3c

    .line 12
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterSecond:I

    const/high16 v0, 0x800000

    .line 13
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeUntilByte:I

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseForAllocFailedSwitch:Z

    const/high16 v0, 0x6000000

    .line 15
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grDiscardableLimitByte:I

    .line 16
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grResourceCacheLimitByte:I

    const/16 v0, 0xa

    .line 17
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->webglErrorRate:I

    .line 18
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/config/UCParamData;->parse(Ljava/lang/String;)V

    return-void
.end method

.method private static commonClientApp()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/UCParamData;->COMMON_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/UCParamData;->includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getClientUCMVersionConfig()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->highSecurityClientApp()Z

    const-string v0, ""

    return-object v0
.end method

.method private getSdCopyPathCd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static highSecurityClientApp()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/UCParamData;->HIGH_SECURITY_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/UCParamData;->includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hostApp()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/UCParamData;->HOST_APP_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/UCParamData;->includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static needLoadNeedShareCoreApp()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->commonClientApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->highSecurityClientApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private obtainGLLostReloadList(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "glLostReloadArray"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private obtainGLLostUnreloadList(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "glLostUnreloadArray"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "UCParamData"

    const-string/jumbo v0, "obtainGLLostUnreloadList: obtatin unreload url list error!"

    .line 7
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "true"

    const-string v1, "UCParamData"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "sdCopyPathCd"

    .line 4
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/taobao/windvane/config/UCParamData;->getSdCopyPathCd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    const-string v6, "hostUcmVersionsCd"

    .line 5
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/taobao/windvane/config/UCParamData;->hostUcmVersionsCd:Ljava/lang/String;

    const-string/jumbo v6, "scLoadPolicyCd"

    .line 6
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->needLoadNeedShareCoreApp()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v2, "sc_lshco"

    .line 7
    :cond_1
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    const-string/jumbo v2, "scCopyToSdcardCd"

    .line 8
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->scCopyToSdcardCd:Ljava/lang/String;

    const-string/jumbo v2, "thirtyUcmVersionsCd"

    .line 9
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->getClientUCMVersionConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->thirtyUcmVersionsCd:Ljava/lang/String;

    const-string v2, "com.eg.android.AlipayGphone^^com.taobao.taobao"

    const-string/jumbo v6, "scPkgNames"

    .line 10
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->scPkgNames:Ljava/lang/String;

    const-string/jumbo v2, "scStillUpd"

    .line 11
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scStillUpd:Ljava/lang/String;

    const-string/jumbo v0, "scWaitMilts"

    .line 12
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->needLoadNeedShareCoreApp()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_0

    :cond_2
    const-string v2, "600000"

    :goto_0
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    const-string/jumbo v0, "u4FocusAutoPopupInputHostList"

    .line 13
    iget-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    const-string v0, "cachePageNumber"

    .line 14
    iget v2, p0, Landroid/taobao/windvane/config/UCParamData;->cachePageNumber:I

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->cachePageNumber:I

    const-string v0, "discardableLimitBytes"

    const/high16 v2, 0x8000000

    .line 15
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableLimitBytes:I

    const-string v0, "discardableReleaseFreeAfterTimeSwitch"

    .line 16
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterTimeSwitch:Z

    const-string v0, "discardableReleaseFreeAfterSecond"

    const/16 v2, 0x3c

    .line 17
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterSecond:I

    const-string v0, "discardableReleaseFreeUntilByte"

    const/high16 v2, 0x800000

    .line 18
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeUntilByte:I

    const-string v0, "discardableReleaseForAllocFailedSwitch"

    .line 19
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseForAllocFailedSwitch:Z

    const-string v0, "grDiscardableLimitByte"

    const/high16 v2, 0x6000000

    .line 20
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grDiscardableLimitByte:I

    const-string v0, "grResourceCacheLimitByte"

    .line 21
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grResourceCacheLimitByte:I

    const-string v0, "cdResourceEmbedSurfaceEmbedViewEnableList"

    .line 22
    iget-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    const-string v0, "cdResourceEmbedViewReAttachList"

    .line 23
    iget-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedViewReAttachList:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedViewReAttachList:Ljava/lang/String;

    const-string/jumbo v0, "ucPageTimerCount"

    .line 24
    iget-object v2, p0, Landroid/taobao/windvane/config/UCParamData;->ucPageTimerCount:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->ucPageTimerCount:Ljava/lang/String;

    const-string/jumbo v0, "openGPUWatchDogOptimize"

    .line 25
    iget-boolean v2, p0, Landroid/taobao/windvane/config/UCParamData;->openGPUWatchDogOptimize:Z

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->openGPUWatchDogOptimize:Z

    .line 26
    invoke-direct {p0, v5}, Landroid/taobao/windvane/config/UCParamData;->obtainGLLostReloadList(Lorg/json/JSONObject;)V

    .line 27
    invoke-direct {p0, v5}, Landroid/taobao/windvane/config/UCParamData;->obtainGLLostUnreloadList(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "webglErrorRate"

    .line 28
    iget v2, p0, Landroid/taobao/windvane/config/UCParamData;->webglErrorRate:I

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->webglErrorRate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "failed to parse uc params"

    .line 29
    invoke-static {v1, p1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public validShareCoreFromSdcardParams()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->thirtyUcmVersionsCd:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scPkgNames:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    const-string/jumbo v1, "sc_lshco"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validShareCoreToSdcardParams()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scCopyToSdcardCd:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->hostUcmVersionsCd:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
