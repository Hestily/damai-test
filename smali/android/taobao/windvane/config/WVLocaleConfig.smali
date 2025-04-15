.class public Landroid/taobao/windvane/config/WVLocaleConfig;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile instance:Landroid/taobao/windvane/config/WVLocaleConfig;


# instance fields
.field public mCurrentLocale:Ljava/lang/String;

.field public mLastLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVLocaleConfig;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVLocaleConfig;->instance:Landroid/taobao/windvane/config/WVLocaleConfig;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/config/WVLocaleConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVLocaleConfig;->instance:Landroid/taobao/windvane/config/WVLocaleConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/WVLocaleConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVLocaleConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVLocaleConfig;->instance:Landroid/taobao/windvane/config/WVLocaleConfig;

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
    sget-object v0, Landroid/taobao/windvane/config/WVLocaleConfig;->instance:Landroid/taobao/windvane/config/WVLocaleConfig;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "wv_main_config"

    const-string v1, "locale"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "currentLocale"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    const-string v0, "lastLocale"

    .line 5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public needFull()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v2, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVLocaleConfig;->save()V

    :cond_3
    return v1
.end method

.method public save()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "currentLocale"

    .line 3
    iget-object v2, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastLocale"

    .line 4
    iget-object v2, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mLastLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object v1

    new-instance v2, Landroid/taobao/windvane/config/WVLocaleConfig$1;

    invoke-direct {v2, p0, v0}, Landroid/taobao/windvane/config/WVLocaleConfig$1;-><init>(Landroid/taobao/windvane/config/WVLocaleConfig;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVLocaleConfig;->save()V

    return-void
.end method
