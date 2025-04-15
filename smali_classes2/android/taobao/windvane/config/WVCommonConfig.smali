.class public Landroid/taobao/windvane/config/WVCommonConfig;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/config/IConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCommonConfig"

.field public static final commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

.field private static volatile instance:Landroid/taobao/windvane/config/WVCommonConfig;


# instance fields
.field public commonCfg:Ljava/lang/String;

.field private inited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/config/WVCommonConfigData;

    invoke-direct {v0}, Landroid/taobao/windvane/config/WVCommonConfigData;-><init>()V

    sput-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "{}"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->commonCfg:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/config/WVCommonConfig;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseConfig(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVCommonConfig;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/config/WVCommonConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/WVCommonConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVCommonConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

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
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    return-object v0
.end method

.method private parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "[]"

    .line 2
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, p2

    const-string v3, "WVCommonConfig"

    const-string/jumbo v5, "obtain array error ==>"

    invoke-static {v3, v5, v4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object p1
.end method

.method private parseConfig(Ljava/lang/String;)I
    .locals 10

    const-string v0, "WVCommonConfig"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_c

    const-string/jumbo p1, "v"

    const-string v4, ""

    .line 3
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    .line 5
    :cond_1
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->v:Ljava/lang/String;

    const-string p1, "configUpdateInterval"

    const-wide/16 v6, 0x0

    .line 6
    invoke-virtual {v3, p1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p1, v8, v6

    if-ltz p1, :cond_2

    .line 7
    iput-wide v8, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->updateInterval:J

    .line 8
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Landroid/taobao/windvane/config/WVConfigManager;->setUpdateInterval(J)V

    :cond_2
    const-wide v6, 0x3fb999999999999aL    # 0.1

    const-string/jumbo p1, "packagePriorityWeight"

    .line 9
    invoke-virtual {v3, p1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->packagePriorityWeight:D

    const-string/jumbo p1, "packageAppStatus"

    const/4 v6, 0x2

    .line 10
    invoke-virtual {v3, p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 11
    iput p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAppStatus:I

    const-string p1, "monitorStatus"

    .line 12
    invoke-virtual {v3, p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 13
    iput p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    const-string/jumbo p1, "urlRuleStatus"

    .line 14
    invoke-virtual {v3, p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 15
    iput p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->urlRuleStatus:I

    const/16 p1, 0x64

    const-string/jumbo v7, "packageMaxAppCount"

    .line 16
    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 17
    iput p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->packageMaxAppCount:I

    const-string/jumbo p1, "urlScheme"

    const-string v7, "http"

    .line 18
    invoke-virtual {v3, p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, ":"

    .line 19
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->urlScheme:Ljava/lang/String;

    const-string/jumbo p1, "verifySampleRate"

    .line 20
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->verifySampleRate:Ljava/lang/String;

    :cond_3
    :try_start_1
    const-string p1, "monitoredApps"

    .line 22
    invoke-direct {p0, v3, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p1, "parseConfig: monitoredApps parseArray occur some error!"

    .line 24
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 25
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    :cond_4
    :try_start_2
    const-string/jumbo p1, "systemBlacks"

    .line 26
    invoke-direct {p0, v3, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo p1, "parseConfig: systemBlacks parseArray occur some error!"

    .line 28
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_5

    .line 29
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->systemBlacks:[Ljava/lang/String;

    :cond_5
    :try_start_3
    const-string v5, "brandBlacks"

    .line 30
    invoke-direct {p0, v3, v5}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    .line 31
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v5, "parseConfig: brandBlacks parseArray occur some error!"

    .line 32
    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    :goto_3
    if-eqz p1, :cond_6

    .line 33
    sget-object v7, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v5, v7, Landroid/taobao/windvane/config/WVCommonConfigData;->brandBlacks:[Ljava/lang/String;

    :cond_6
    :try_start_4
    const-string v5, "modelBlacks"

    .line 34
    invoke-direct {p0, v3, v5}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v5, "parseConfig: modelBlacks parseArray occur some error!"

    .line 36
    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    :goto_4
    if-eqz p1, :cond_7

    .line 37
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v5, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->modelBlacks:[Ljava/lang/String;

    :cond_7
    :try_start_5
    const-string p1, "aliNetworkDegradeDomains"

    .line 38
    invoke-direct {p0, v3, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo p1, "parseConfig: aliNetworkDegradeDomains parseArray occur some error!"

    .line 40
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_8

    .line 41
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object p1, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->aliNetworkDegradeDomains:[Ljava/lang/String;

    :cond_8
    :try_start_6
    const-string p1, "disableMixViews"

    .line 42
    invoke-direct {p0, v3, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo p1, "parseConfig: disableMixViews parseArray occur some error!"

    .line 44
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_6
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->disableMixViews:[Ljava/lang/String;

    const-string v0, "disableInstallPeriod"

    .line 46
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_a

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    array-length v1, v0

    if-ne v1, v6, :cond_a

    .line 50
    aget-object v1, v0, v2

    const-string v6, "^[0-9]*$"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 51
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->disableInstallPeriod_start:J

    .line 52
    :cond_9
    aget-object v1, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 53
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->disableInstallPeriod_end:J

    :cond_a
    const-string/jumbo v0, "ucParam"

    .line 54
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    if-eqz v1, :cond_b

    .line 56
    invoke-virtual {v1, v0}, Landroid/taobao/windvane/config/UCParamData;->parse(Ljava/lang/String;)V

    :cond_b
    const-string v0, "enableUCShareCore"

    .line 57
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUcShareCore:Z

    const-string/jumbo v0, "useSystemWebView"

    .line 58
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useSystemWebView:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v6, "ucsdk_alinetwork_rate"

    .line 59
    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_alinetwork_rate:D

    const-string/jumbo v0, "reduceCameraPermissionOfStorage"

    .line 60
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->reduceCameraPermissionOfStorage:Z

    const-string/jumbo v0, "reduceGalleryPermissionOfStorageWrite"

    .line 61
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->reduceGalleryPermissionOfStorageWrite:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v6, "ucsdk_image_strategy_rate"

    .line 62
    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_image_strategy_rate:D

    const-string v0, "cookieUrlRule"

    .line 63
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->cookieUrlRule:Ljava/lang/String;

    const-string/jumbo v0, "ucCoreUrl"

    .line 64
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    const-string/jumbo v0, "shareBlankList"

    .line 65
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->shareBlankList:Ljava/lang/String;

    const-string v0, "excludeUCVersions"

    const-string v1, "1.12.11.0, 1.15.15.0, 1.14.13.0, 1.13.12.0"

    .line 66
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->excludeUCVersions:Ljava/lang/String;

    const-string v0, "isOpenCombo"

    .line 67
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->isOpenCombo:Z

    const-string v0, "isCheckCleanup"

    .line 68
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->isCheckCleanup:Z

    const-string v0, "isAutoRegisterApp"

    .line 69
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->isAutoRegisterApp:Z

    const-string v0, "isUseTBDownloader"

    .line 70
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->isUseTBDownloader:Z

    const-string v0, "isUseAliNetworkDelegate"

    .line 71
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->isUseAliNetworkDelegate:Z

    const/16 v0, 0x1e

    const-string/jumbo v1, "packageDownloadLimit"

    .line 72
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->packageDownloadLimit:I

    const/16 v0, 0xbb8

    const-string/jumbo v1, "packageAccessInterval"

    .line 73
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAccessInterval:I

    const v0, 0x19bfcc00

    const-string/jumbo v1, "packageRemoveInterval"

    .line 74
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->packageRemoveInterval:I

    const v0, 0x19bfcc00

    const-string/jumbo v1, "recoveryInterval"

    .line 75
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->recoveryInterval:I

    const-string v0, "customsComboLimit"

    .line 76
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->customsComboLimit:I

    const/16 v0, 0xa

    const-string v1, "customsDirectQueryLimit"

    .line 77
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->customsDirectQueryLimit:I

    const-string/jumbo v0, "packageZipPrefix"

    .line 78
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPrefix:Ljava/lang/String;

    const-string/jumbo v0, "packageZipPreviewPrefix"

    .line 79
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPreviewPrefix:Ljava/lang/String;

    const-string/jumbo v0, "ucSkipOldKernel"

    .line 80
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucSkipOldKernel:Z

    const-string/jumbo v0, "useUCPlayer"

    .line 81
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useUCPlayer:Z

    const-string v0, "enableUCPrecache"

    .line 82
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecache:Z

    const-string/jumbo v0, "precachePackageName"

    .line 83
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->precachePackageName:Ljava/lang/String;

    const-string v0, "enableUCPrecacheDoc"

    .line 84
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecacheDoc:Z

    .line 85
    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    const-string v1, "initUCCorePolicy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    const/16 v0, 0x13

    const-string v1, "initWebPolicy"

    .line 86
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initWebPolicy:I

    const-string v0, "initOldCoreVersions"

    const-string v1, "3.*"

    .line 87
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initOldCoreVersions:Ljava/lang/String;

    .line 88
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openExperiment:Z

    const-string/jumbo v1, "openExperiment"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openExperiment:Z

    .line 89
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCExperiment:Z

    const-string/jumbo v1, "openUCExperiment"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCExperiment:Z

    .line 90
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCImageExperiment:Z

    const-string/jumbo v1, "openUCImageExperiment"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCImageExperiment:Z

    .line 91
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->discardableFreeIfHasGpuDecode:Z

    const-string v1, "discardableFreeIfHasGpuDecode"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->discardableFreeIfHasGpuDecode:Z

    .line 92
    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiRetryTimes:I

    const-string/jumbo v1, "ucMultiRetryTimes"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiRetryTimes:I

    .line 93
    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    const-string/jumbo v1, "webMultiPolicy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    .line 94
    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    const-string v1, "gpuMultiPolicy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    const/16 v0, 0x1f40

    const-string/jumbo v1, "ucMultiTimeOut"

    .line 95
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    .line 96
    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiStartTime:I

    const-string/jumbo v1, "ucMultiStartTime"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiStartTime:I

    .line 97
    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->recoverMultiInterval:I

    const-string/jumbo v1, "recoverMultiInterval"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->recoverMultiInterval:I

    const-string/jumbo v0, "ucMultiServiceSpeedUp"

    .line 98
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiServiceSpeedUp:Z

    .line 99
    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->downloadCoreType:I

    const-string v1, "downloadCoreType"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->downloadCoreType:I

    const-string/jumbo v0, "openLog"

    .line 100
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openLog:Z

    const-string/jumbo v0, "openTLog"

    .line 101
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openTLog:Z

    const-string/jumbo v0, "useOldBridge"

    .line 102
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useOldBridge:Z

    .line 103
    iget-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ffmegSoPath:Ljava/lang/String;

    const-string v1, "ffmegSoPath"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ffmegSoPath:Ljava/lang/String;

    .line 104
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSgRequestCheck:Z

    const-string v1, "enableSgRequestCheck"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSgRequestCheck:Z

    .line 105
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->filterSgRequestCheck:Z

    const-string v1, "filterSgRequestCheck"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->filterSgRequestCheck:Z

    const-string v0, "enableExtImgDecoder"

    .line 106
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableExtImgDecoder:Z

    const-string/jumbo v0, "skipPreRenderBackgroundWhitePage"

    .line 107
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->skipPreRenderBackgroundWhitePage:Z

    const-string v0, "fixWhitePageBug"

    .line 108
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->fixWhitePageBug:Z

    const-string v0, "enablePreStartup"

    .line 109
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enablePreStartup:Z

    const-string/jumbo v0, "useNewThreadPool"

    .line 110
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useNewThreadPool:Z

    .line 111
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableGpuGoneReload:Z

    const-string v1, "enableGpuGoneReload"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableGpuGoneReload:Z

    const-string/jumbo v0, "open5GAdapter"

    .line 112
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->open5GAdapter:Z

    const-string/jumbo v0, "useURLConfig"

    .line 113
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useURLConfig:Z

    .line 114
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->targetSdkAdapte:Z

    const-string/jumbo v1, "targetSdkAdapte"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->targetSdkAdapte:Z

    .line 115
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableZCacheAdpter:Z

    const-string v1, "enableZCacheAdpter"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableZCacheAdpter:Z

    .line 116
    iget-wide v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->zcacheResponseTimeOut:J

    const-string/jumbo v2, "zcacheResponseTimeOut"

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->zcacheResponseTimeOut:J

    .line 117
    iget-wide v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->sysZcacheResponseTimeOut:J

    const-string/jumbo v2, "sysZcacheResponseTimeOut"

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->sysZcacheResponseTimeOut:J

    const-string v0, "enableMimeTypeSet"

    .line 118
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableMimeTypeSet:Z

    .line 119
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->fixCameraPermission:Z

    const-string v1, "fixCameraPermission"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->fixCameraPermission:Z

    .line 120
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableThreadWatchdog:Z

    const-string v1, "enableThreadWatchdog"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableThreadWatchdog:Z

    .line 121
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->storeCachedDir:Z

    const-string/jumbo v1, "storeCachedDir"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->storeCachedDir:Z

    .line 122
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSamsungClipboard:Z

    const-string v1, "enableSamsungClipboard"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSamsungClipboard:Z

    .line 123
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCUploadToTlog:Z

    const-string v1, "enableUCUploadToTlog"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCUploadToTlog:Z

    .line 124
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableWVFullTrace:Z

    const-string v1, "enableWVFullTrace"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableWVFullTrace:Z

    .line 125
    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->uploadPPAfterJs:Z

    const-string/jumbo v1, "uploadPPAfterJs"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->uploadPPAfterJs:Z

    .line 126
    invoke-direct {p0, v3}, Landroid/taobao/windvane/config/WVCommonConfig;->parseUnzipDegradeConfig(Lorg/json/JSONObject;)V

    .line 127
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p1

    const/16 v0, 0x177c

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 128
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    return p1

    :cond_c
    return v2
.end method

.method private parseUnzipDegradeConfig(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "WVCommonConfig"

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v2, "zipDegradeMode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeMode:I

    const-string/jumbo v2, "zipDegradeList"

    const-string v4, ""

    .line 2
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeList:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getBRAND()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build$VERSION;->getRELEASE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeList:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 8
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Degrade unzip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->needZipDegrade:Z

    .line 11
    iget v1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 12
    iput v3, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAppStatus:I

    const-string p1, "Disable package app"

    .line 13
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public hasInited()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wv_main_config"

    const-string v1, "commonwv-data"

    .line 2
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->commonCfg:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/WVCommonConfig;->parseConfig(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/config/WVCommonConfig;->commonCfg:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseConfig(Ljava/lang/String;)I

    const-string/jumbo v0, "wv_main_config"

    const-string v1, "commonwv-data"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCommonRule(Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p2

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->v:Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->getTargetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/taobao/windvane/config/WVConfigManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p2

    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->getTargetValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p2, v2, v1, v0, p3}, Landroid/taobao/windvane/config/WVConfigManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object p3

    new-instance v0, Landroid/taobao/windvane/config/WVCommonConfig$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/taobao/windvane/config/WVCommonConfig$1;-><init>(Landroid/taobao/windvane/config/WVCommonConfig;Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Landroid/taobao/windvane/connect/ConnectManager;->connectSync(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    return-void
.end method
