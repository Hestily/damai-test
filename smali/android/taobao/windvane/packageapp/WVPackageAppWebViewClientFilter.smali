.class public Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# static fields
.field static final CORE_TYPE_ANDROID:I = 0x2

.field static final CORE_TYPE_U3:I = 0x1

.field static final CORE_TYPE_U4:I = 0x3

.field private static ZCACHE_REPONSE_TIMEOUT:J = 0x14L

.field private static instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;


# instance fields
.field private TAG:Ljava/lang/String;


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
    const-class v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 1
    sget-wide v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->ZCACHE_REPONSE_TIMEOUT:J

    return-wide v0
.end method

.method public static getInstance()Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;-><init>()V

    sput-object v1, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

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
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    return-object v0
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 16

    move-object/from16 v7, p0

    move/from16 v1, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 1
    new-instance v0, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {v0, v9}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object v0

    :cond_0
    const/16 v2, 0x3f0

    const/16 v0, 0x3ec

    if-eq v1, v0, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {v0, v9}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object v0

    :cond_2
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v0, :cond_3

    .line 3
    :try_start_0
    aget-object v0, p3, v9

    :goto_1
    check-cast v0, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    aget-object v0, p3, v4

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 4
    iget-object v5, v7, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onEvent: \u83b7\u53d6\u5185\u6838\u72b6\u6001\u51fa\u9519"

    invoke-static {v5, v6}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    const/4 v10, 0x3

    if-eq v3, v4, :cond_5

    if-ne v3, v10, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-wide v5, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->sysZcacheResponseTimeOut:J

    sput-wide v5, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->ZCACHE_REPONSE_TIMEOUT:J

    goto :goto_5

    .line 7
    :cond_5
    :goto_4
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-wide v5, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->zcacheResponseTimeOut:J

    sput-wide v5, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->ZCACHE_REPONSE_TIMEOUT:J

    .line 8
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    iget-object v3, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    const-string v11, "apmUrl"

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zcache read start: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "msg"

    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ZCache.Start"

    .line 11
    invoke-static {v3, v0}, Landroid/taobao/windvane/ha/WVHAManager;->uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    invoke-static {}, Lcom/taobao/zcache/ZCacheInitTask;->getInstance()Lcom/taobao/zcache/ZCacheInitTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/zcache/ZCacheInitTask;->init()V

    .line 13
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->keepFullUrl:Z

    if-eqz v0, :cond_6

    iget-object v0, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v3, "https"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 16
    :cond_6
    iget-object v0, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-ne v1, v2, :cond_7

    .line 18
    :try_start_1
    aget-object v0, p3, v9

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 19
    iget-object v1, v7, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEvent: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :cond_7
    :goto_6
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableZCacheAdpter:Z

    if-nez v0, :cond_8

    .line 22
    :try_start_2
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v0

    iget-object v1, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/taobao/zcache/ZCacheManager;->getZCacheResource(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/zcache/model/ZCacheResourceResponse;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_8

    .line 24
    :cond_8
    new-instance v14, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;

    invoke-direct {v14}, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;-><init>()V

    .line 25
    new-instance v0, Lcom/taobao/zcache/ResourceRequest;

    iget-object v1, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/taobao/zcache/ResourceRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v15, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 28
    :try_start_3
    new-instance v4, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v13, v4

    move-object v4, v15

    invoke-direct/range {v1 .. v6}, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter$1;-><init>(Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;Ljava/util/concurrent/CountDownLatch;J)V

    invoke-static {v0, v13}, Lcom/taobao/zcache/ZCache;->getResource(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V

    .line 29
    sget-wide v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->ZCACHE_REPONSE_TIMEOUT:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 30
    iget-object v1, v7, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEvent: \u5f02\u6b65\u7b49\u5f85\u53d1\u751f\u9519\u8bef\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :goto_7
    iget-object v0, v14, Landroid/taobao/windvane/packageapp/zipapp/utils/ZCacheResourceWrapper;->zCacheResourceResponse:Lcom/taobao/zcache/model/ZCacheResourceResponse;

    :goto_8
    const-string v1, "H5 use ZCache 3.0, url=["

    const-string v2, "ZCache"

    if-nez v0, :cond_9

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], with response:[false]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {v0, v9}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object v0

    .line 35
    :cond_9
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->enableMimeTypeSet:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    if-eqz v3, :cond_b

    const-string v4, "Content-Type"

    .line 36
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 37
    iget-object v3, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "text/html"

    if-eqz v3, :cond_a

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v13, v4

    goto :goto_9

    :cond_a
    move-object v13, v3

    .line 39
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimeType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    .line 40
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] with response:["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    if-eqz v13, :cond_c

    goto :goto_b

    :cond_c
    iget-object v13, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->mimeType:Ljava/lang/String;

    :goto_b
    iget-object v2, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->encoding:Ljava/lang/String;

    iget-object v3, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->inputStream:Ljava/io/InputStream;

    iget-object v4, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    invoke-direct {v1, v13, v2, v3, v4}, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    .line 42
    iget v2, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    iput v2, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->status:I

    .line 43
    iget-object v2, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    iput-object v2, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->zcacheInfo:Ljava/lang/String;

    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 45
    iget-object v3, v8, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zcache read end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ZCache.End"

    .line 47
    invoke-static {v3, v2}, Landroid/taobao/windvane/ha/WVHAManager;->uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    new-instance v2, Landroid/taobao/windvane/service/WVEventResult;

    iget-boolean v0, v0, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    invoke-direct {v2, v0, v1}, Landroid/taobao/windvane/service/WVEventResult;-><init>(ZLjava/lang/Object;)V

    return-object v2
.end method
