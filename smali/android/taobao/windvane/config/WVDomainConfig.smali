.class public Landroid/taobao/windvane/config/WVDomainConfig;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVDomainConfig"

.field private static volatile instance:Landroid/taobao/windvane/config/WVDomainConfig;


# instance fields
.field private forbiddenDomainRedirectURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/WVDomainConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/config/WVDomainConfig;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVDomainConfig;->parseConfig(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVDomainConfig;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVDomainConfig;->instance:Landroid/taobao/windvane/config/WVDomainConfig;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/config/WVDomainConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVDomainConfig;->instance:Landroid/taobao/windvane/config/WVDomainConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/WVDomainConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVDomainConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVDomainConfig;->instance:Landroid/taobao/windvane/config/WVDomainConfig;

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
    sget-object v0, Landroid/taobao/windvane/config/WVDomainConfig;->instance:Landroid/taobao/windvane/config/WVDomainConfig;

    return-object v0
.end method

.method private parseConfig(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_7

    const-string/jumbo p1, "v"

    const-string v3, ""

    .line 3
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    const-string v1, "aliDomain"

    .line 5
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "thirdPartyDomain"

    .line 6
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "supportDownloadDomain"

    .line 7
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "forbiddenDomain"

    .line 8
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "allowAccessDomain"

    .line 9
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "forbiddenDomainRedirectURL"

    .line 10
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/config/WVDomainConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    sput-object v1, Landroid/taobao/windvane/config/WVServerConfig;->DOMAIN_PATTERN:Ljava/lang/String;

    .line 13
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->domainPat:Ljava/util/regex/Pattern;

    .line 14
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    sput-object v4, Landroid/taobao/windvane/config/WVServerConfig;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    .line 16
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->thirdPartyDomain:Ljava/util/regex/Pattern;

    .line 17
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    sput-object v5, Landroid/taobao/windvane/config/WVServerConfig;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    .line 19
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->supportDownloadDomain:Ljava/util/regex/Pattern;

    .line 20
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    sput-object v7, Landroid/taobao/windvane/config/WVServerConfig;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    .line 22
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->allowAccessDomain:Ljava/util/regex/Pattern;

    .line 23
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    sput-object v6, Landroid/taobao/windvane/config/WVServerConfig;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    .line 25
    sput-object v0, Landroid/taobao/windvane/config/WVServerConfig;->forbiddenDomain:Ljava/util/regex/Pattern;

    .line 26
    iget-object v0, p0, Landroid/taobao/windvane/config/WVDomainConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    iget-object v0, p0, Landroid/taobao/windvane/config/WVDomainConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    iput-object v3, p0, Landroid/taobao/windvane/config/WVDomainConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 29
    :cond_6
    sput-object p1, Landroid/taobao/windvane/config/WVServerConfig;->v:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_7
    return v1
.end method


# virtual methods
.method public getForbiddenDomainRedirectURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVDomainConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    const-string/jumbo v0, "wv_main_config"

    const-string v1, "domainwv-data"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/WVDomainConfig;->parseConfig(Ljava/lang/String;)Z

    return-void
.end method

.method public updateDomainRule(Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p2

    sget-object v0, Landroid/taobao/windvane/config/WVServerConfig;->v:Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->getTargetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/taobao/windvane/config/WVConfigManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object p3

    new-instance v0, Landroid/taobao/windvane/config/WVDomainConfig$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/taobao/windvane/config/WVDomainConfig$1;-><init>(Landroid/taobao/windvane/config/WVDomainConfig;Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Landroid/taobao/windvane/connect/ConnectManager;->connectSync(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    return-void
.end method
