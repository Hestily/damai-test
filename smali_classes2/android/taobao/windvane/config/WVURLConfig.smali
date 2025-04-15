.class public Landroid/taobao/windvane/config/WVURLConfig;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/config/IConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVURLConfig"

.field private static volatile instance:Landroid/taobao/windvane/config/WVURLConfig;


# instance fields
.field private forbiddenDomainRedirectURL:Ljava/lang/String;

.field private inited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVURLConfig;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/config/WVURLConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/WVURLConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVURLConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

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
    sget-object v0, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

    return-object v0
.end method

.method private parseConfig(Ljava/lang/String;)Z
    .locals 7

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

    move-object v0, v2

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo p1, "url_patterns"

    const-string v2, ""

    .line 3
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "url_rules"

    .line 4
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "api_group"

    .line 5
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "forbiddenDomainRedirectURL"

    const-string v6, "https://h5.m.taobao.com/forbidden_error.html"

    .line 6
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 7
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcherConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object p1

    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isForbiddenOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iput-object v2, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public getForbiddenDomainRedirectURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public hasInited()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wv_main_config"

    const-string/jumbo v1, "url_configwv-data"

    .line 2
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/WVURLConfig;->parseConfig(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVURLConfig;->parseConfig(Ljava/lang/String;)Z

    const-string/jumbo v0, "wv_main_config"

    const-string/jumbo v1, "url_configwv-data"

    .line 2
    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
