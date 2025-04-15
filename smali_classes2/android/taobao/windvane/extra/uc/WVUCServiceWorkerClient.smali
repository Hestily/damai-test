.class public Landroid/taobao/windvane/extra/uc/WVUCServiceWorkerClient;
.super Lcom/uc/webview/export/ServiceWorkerClient;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUCServiceWorkerClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/uc/webview/export/ServiceWorkerClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x3ec

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v0, v2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v1

    .line 3
    iget-boolean v2, v1, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    const-string v8, "*"

    const-string v9, "Access-Control-Allow-Origin"

    const-string v10, "WVUCServiceWorkerClient"

    if-eqz v2, :cond_4

    iget-object v1, v1, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    if-eqz v2, :cond_4

    .line 4
    check-cast v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    .line 5
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9884\u52a0\u8f7d\u547d\u4e2d : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance p1, Lcom/uc/webview/export/WebResourceResponse;

    iget-object v2, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mMimeType:Ljava/lang/String;

    iget-object v3, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mEncoding:Ljava/lang/String;

    iget-object v4, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mInputStream:Ljava/io/InputStream;

    invoke-direct {p1, v2, v3, v4}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 8
    :try_start_0
    iget-object v2, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 9
    :try_start_1
    invoke-static {v0}, Landroid/taobao/windvane/config/WVServerConfig;->isAllowAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v1, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v0}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    const-string v0, "add cross origin header"

    .line 14
    invoke-static {v10, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v0}, Landroid/taobao/windvane/config/WVServerConfig;->isAllowAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1, v0}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p1

    .line 22
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getFromType()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V

    .line 24
    :cond_5
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/cache/WVCacheManager;->isCacheEnabled(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UTF-8"

    if-eqz v1, :cond_6

    .line 25
    invoke-static {v0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v1}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 31
    :try_start_4
    new-instance v3, Lcom/uc/webview/export/WebResourceResponse;

    const-string v4, "image/png"

    invoke-direct {v3, v4, v2, v1}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 32
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v3, v4}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_6

    .line 35
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 36
    :cond_6
    :goto_2
    invoke-static {}, Landroid/taobao/windvane/cache/WVMemoryCache;->getInstance()Landroid/taobao/windvane/cache/WVMemoryCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/cache/WVMemoryCache;->getMemoryCacheByUrl(Ljava/lang/String;)Landroid/taobao/windvane/cache/WVMemoryCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->cachedTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long p1, v3, v5

    if-gez p1, :cond_7

    .line 38
    new-instance v7, Lcom/uc/webview/export/WebResourceResponse;

    sget-object p1, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/util/MimeTypeEnum;->getMimeType()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v1, v1, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedDatas:[B

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, p1, v2, v3}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 39
    :cond_7
    invoke-static {}, Landroid/taobao/windvane/cache/WVMemoryCache;->getInstance()Landroid/taobao/windvane/cache/WVMemoryCache;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/cache/WVMemoryCache;->clearCacheByUrl(Ljava/lang/String;)V

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WVMemoryCacheInfo \u547d\u4e2d : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 41
    :cond_8
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldInterceptRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_9
    invoke-super {p0, p1}, Lcom/uc/webview/export/ServiceWorkerClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
