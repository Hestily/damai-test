.class public Landroid/taobao/windvane/monitor/WVMonitorConfigManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/monitor/WVMonitorConfigManager$PageFinshWVEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVPackageMonitorImpl"

.field private static volatile instance:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;


# instance fields
.field public config:Landroid/taobao/windvane/monitor/WVMonitorConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/taobao/windvane/monitor/WVMonitorConfig;

    invoke-direct {v0}, Landroid/taobao/windvane/monitor/WVMonitorConfig;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/monitor/WVMonitorConfigManager;Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->updateMonitorConfig(Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->instance:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->instance:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    invoke-direct {v1}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;-><init>()V

    .line 5
    sput-object v1, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->instance:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->instance:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    return-object v0
.end method

.method private updateMonitorConfig(Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p2, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/taobao/windvane/config/WVConfigUpdateCallback;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p2

    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    iget-object v0, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->v:Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->getTargetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/taobao/windvane/config/WVConfigManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object p3

    new-instance v0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$2;-><init>(Landroid/taobao/windvane/monitor/WVMonitorConfigManager;Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Landroid/taobao/windvane/connect/ConnectManager;->connectSync(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "wv_main_config"

    const-string v1, "monitorwv-data"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->parseRule(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$1;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$1;-><init>(Landroid/taobao/windvane/monitor/WVMonitorConfigManager;)V

    const-string v2, "monitor"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/config/WVConfigManager;->registerHandler(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigHandler;)V

    .line 5
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$PageFinshWVEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$PageFinshWVEventListener;-><init>(Landroid/taobao/windvane/monitor/WVMonitorConfigManager$1;)V

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    return-void
.end method

.method protected needSaveConfig(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    new-instance v2, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v2}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 3
    invoke-virtual {v2, p1}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseJsonResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    move-result-object p1

    iget-boolean p1, p1, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, v2, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    :cond_1
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->parseRule(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorConfig;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 7
    :cond_2
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public parseRule(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorConfig;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;

    invoke-direct {p1}, Landroid/taobao/windvane/monitor/WVMonitorConfig;-><init>()V

    const-string/jumbo v2, "v"

    const-string v3, ""

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->v:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    const-string v2, "minLoadTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->onLoad:J

    .line 6
    iget-object v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    const-string v2, "minDomLoadTime"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->onDomLoad:J

    .line 7
    iget-object v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    const-string v2, "minResTime"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->resTime:J

    .line 8
    iget-object v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    const-string/jumbo v2, "reportNetStat"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->netstat:Z

    .line 9
    iget-object v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    const/16 v2, 0x64

    const-string/jumbo v5, "resSample"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->resSample:I

    const-string v0, "errorType"

    const-string v2, "b"

    .line 10
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->isErrorBlacklist:Z

    const-string v0, "errorRule"

    .line 11
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 13
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    iget-object v5, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->errorRule:Ljava/util/List;

    const-string/jumbo v6, "url"

    .line 15
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "msg"

    .line 16
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "code"

    .line 17
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p1, v6, v7, v2}, Landroid/taobao/windvane/monitor/WVMonitorConfig;->newErrorRuleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    const-string/jumbo v0, "perfCheckSampleRate"

    .line 19
    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->perfCheckSampleRate:D

    const-string/jumbo v0, "perfCheckURL"

    .line 20
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->perfCheckURL:Ljava/lang/String;

    return-object p1

    .line 21
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseRule error. content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WVPackageMonitorImpl"

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
