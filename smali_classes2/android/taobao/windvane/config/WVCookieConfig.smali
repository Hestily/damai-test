.class public Landroid/taobao/windvane/config/WVCookieConfig;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/config/IConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCookieConfig"

.field private static volatile instance:Landroid/taobao/windvane/config/WVCookieConfig;


# instance fields
.field public cookieBlackList:Ljava/lang/String;

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

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVCookieConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCookieConfig;->cookieBlackList:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVCookieConfig;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCookieConfig;->instance:Landroid/taobao/windvane/config/WVCookieConfig;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/config/WVCookieConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVCookieConfig;->instance:Landroid/taobao/windvane/config/WVCookieConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/WVCookieConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVCookieConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVCookieConfig;->instance:Landroid/taobao/windvane/config/WVCookieConfig;

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
    sget-object v0, Landroid/taobao/windvane/config/WVCookieConfig;->instance:Landroid/taobao/windvane/config/WVCookieConfig;

    return-object v0
.end method

.method private parseConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/config/WVCookieConfig;->cookieBlackList:Ljava/lang/String;

    const-string v1, "cookieBlackList"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/config/WVCookieConfig;->cookieBlackList:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public hasInited()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVCookieConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVCookieConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wv_main_config"

    const-string v1, "cookie_black_list"

    .line 2
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cookie config local = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WVCookieConfig"

    invoke-static {v3, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/WVCookieConfig;->parseConfig(Ljava/lang/String;)V

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    new-instance v2, Landroid/taobao/windvane/config/WVCookieConfig$1;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/config/WVCookieConfig$1;-><init>(Landroid/taobao/windvane/config/WVCookieConfig;)V

    invoke-virtual {v1, v0, v2}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive cookie config = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVCookieConfig"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVCookieConfig;->parseConfig(Ljava/lang/String;)V

    const-string/jumbo v0, "wv_main_config"

    const-string v1, "cookie_black_list"

    .line 3
    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
