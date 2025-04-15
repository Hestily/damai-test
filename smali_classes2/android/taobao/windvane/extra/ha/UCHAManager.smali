.class public Landroid/taobao/windvane/extra/ha/UCHAManager;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Landroid/util/Pair<",
        "Landroid/os/Message;",
        "Landroid/os/Message;",
        ">;>;"
    }
.end annotation


# static fields
.field private static INSTANCE:Landroid/taobao/windvane/extra/ha/UCHAManager; = null

.field private static final TAG:Ljava/lang/String; = "UCHA"

.field private static closeUCHA:Z = false

.field private static commonID:J = 0x0L

.field private static currentUrl:Ljava/lang/String; = ""

.field private static lastID:Ljava/lang/String; = ""

.field private static onlyBkpg:Z = true


# instance fields
.field private sb:Ljava/lang/StringBuilder;


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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/ha/UCHAManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private getConfigsFromSomeWhere(Landroid/taobao/windvane/config/UCHASettings$ConfigRate;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "u4_collect_url_query"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "cver"

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5
    iget-boolean v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4CollectUrlQuery:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    iget-boolean v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4CollectUrlRef:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "u4_bkpg_sampling_rate"

    .line 7
    iget v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4BkpgSamplingRate:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "u4_t1t3detail_sampling_rate"

    .line 8
    iget v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4T1t3detailSamplingRate:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "u4_resloadfail_sampling_rate"

    .line 9
    iget v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4ResloadfailSamplingRate:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "u4_xhr_sampling_rate"

    .line 10
    iget v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4XhrSamplingRate:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "u4_jserr_sampling_rate"

    .line 11
    iget v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4JserrSamplingRate:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "u4_har_sampling_rate"

    .line 12
    iget-wide v4, p1, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4HarSamplingRate:D

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "common"

    .line 13
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "config"

    .line 14
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Landroid/taobao/windvane/extra/ha/UCHAManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/ha/UCHAManager;->INSTANCE:Landroid/taobao/windvane/extra/ha/UCHAManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/extra/ha/UCHAManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/extra/ha/UCHAManager;->INSTANCE:Landroid/taobao/windvane/extra/ha/UCHAManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/extra/ha/UCHAManager;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/ha/UCHAManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/extra/ha/UCHAManager;->INSTANCE:Landroid/taobao/windvane/extra/ha/UCHAManager;

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
    sget-object v0, Landroid/taobao/windvane/extra/ha/UCHAManager;->INSTANCE:Landroid/taobao/windvane/extra/ha/UCHAManager;

    return-object v0
.end method

.method private initCallBack()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "log_upload_callback"

    .line 2
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 3
    invoke-static {v1, v0}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPubOption()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    .line 3
    invoke-static {v1, v0}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getConfigRates()Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/ha/UCHAManager;->getConfigsFromSomeWhere(Landroid/taobao/windvane/config/UCHASettings$ConfigRate;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public commitUCHA()V
    .locals 0

    return-void
.end method

.method public initHAParam(Landroid/taobao/windvane/config/UCHASettings;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "context"

    .line 2
    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    .line 3
    iget-object v2, p1, Landroid/taobao/windvane/config/UCHASettings;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_secret"

    .line 4
    iget-object v2, p1, Landroid/taobao/windvane/config/UCHASettings;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "log_upload_mode"

    .line 5
    iget v2, p1, Landroid/taobao/windvane/config/UCHASettings;->logUploadMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "config_update_mode"

    .line 6
    iget v2, p1, Landroid/taobao/windvane/config/UCHASettings;->configUpdateMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "debug"

    .line 7
    iget-boolean v2, p1, Landroid/taobao/windvane/config/UCHASettings;->debug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 8
    invoke-static {v1, v0}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v0, p1, Landroid/taobao/windvane/config/UCHASettings;->logUploadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 10
    invoke-direct {p0}, Landroid/taobao/windvane/extra/ha/UCHAManager;->initCallBack()V

    .line 11
    :cond_0
    iget p1, p1, Landroid/taobao/windvane/config/UCHASettings;->configUpdateMode:I

    if-ne p1, v1, :cond_1

    .line 12
    invoke-direct {p0}, Landroid/taobao/windvane/extra/ha/UCHAManager;->setPubOption()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceiveValue(Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-string v0, "log_type"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "log_data"

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "link_key"

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "link_id"

    .line 7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v3, "pvuv"

    .line 8
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    sget-object v0, Landroid/taobao/windvane/extra/ha/UCHAManager;->lastID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sput-object p1, Landroid/taobao/windvane/extra/ha/UCHAManager;->lastID:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 11
    sget-boolean v3, Landroid/taobao/windvane/extra/ha/UCHAManager;->onlyBkpg:Z

    const/4 v4, 0x0

    const-string v5, "bkpg"

    if-eqz v3, :cond_2

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 12
    :cond_2
    sget-object v3, Landroid/taobao/windvane/extra/ha/UCHAManager;->lastID:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/extra/ha/UCHAManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/ha/UCHAManager;->commitUCHA()V

    .line 15
    iget-object v3, p0, Landroid/taobao/windvane/extra/ha/UCHAManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 16
    sput-object p1, Landroid/taobao/windvane/extra/ha/UCHAManager;->lastID:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Landroid/taobao/windvane/extra/ha/UCHAManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_4
    :goto_0
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "]"

    const-string v3, "];logData:["

    const-string v4, "linkID:["

    const-string v5, "UCHA"

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/ha/UCHAManager;->onReceiveValue(Landroid/util/Pair;)V

    return-void
.end method
