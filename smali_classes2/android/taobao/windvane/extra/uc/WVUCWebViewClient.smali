.class public Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;
.super Lcom/uc/webview/export/WebViewClient;
.source "Taobao"


# static fields
.field private static final SANDBOX_TAG:Ljava/lang/String; = "WVUCWebViewClient.sandbox"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_SMS:Ljava/lang/String; = "sms:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final TAG:Ljava/lang/String; = "WVUCWebViewClient"


# instance fields
.field public crashCount:I

.field isError:Z

.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashCountReseter:Ljava/lang/Runnable;

.field private mRenderProcessHandler:Landroid/os/Handler;

.field private useOldBridge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->crashCount:I

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->useOldBridge:Z

    .line 4
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$5;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$5;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mCrashCountReseter:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static getMetaDataScript()Ljava/lang/String;
    .locals 10

    const-string v0, "WV.Meta.Performance.JSFSP"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "(function(){var d=document,r={}"

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    aget-object v7, v0, v4

    aput-object v7, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v2, v9

    const-string v7, ",n%d=\'%s\',e%d=d.getElementById(n%d)"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    const-string v5, "if(e%d){r[n%d]=e%d.getAttribute(\'value\')}"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, ";%sreturn JSON.stringify(r);})()"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMetaInfo(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->getMetaDataScript()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;

    invoke-direct {v1, p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {p1, v0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldInterceptRequestInternal(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/taobao/windvane/service/WVEventResult;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 10

    .line 1
    iget-boolean v0, p3, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    const-string v1, "*"

    const-string v2, "WVUCWebViewClient"

    const-string v3, "Access-Control-Allow-Origin"

    if-eqz v0, :cond_4

    iget-object p3, p3, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    if-eqz p3, :cond_4

    instance-of v0, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    if-eqz v0, :cond_4

    .line 2
    check-cast p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    .line 3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9884\u52a0\u8f7d\u547d\u4e2d : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZCache"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance p1, Lcom/uc/webview/export/WebResourceResponse;

    iget-object v0, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mMimeType:Ljava/lang/String;

    iget-object v4, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mEncoding:Ljava/lang/String;

    iget-object v5, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mInputStream:Ljava/io/InputStream;

    invoke-direct {p1, v0, v4, v5}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 6
    :try_start_0
    iget-object v0, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    invoke-static {p2}, Landroid/taobao/windvane/config/WVServerConfig;->isAllowAccess(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object p3, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, p2}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    const-string p2, "add cross origin header"

    .line 12
    invoke-static {v2, p2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 14
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p2}, Landroid/taobao/windvane/config/WVServerConfig;->isAllowAccess(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-virtual {p2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1, p2}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p1

    .line 20
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 21
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getFromType()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-interface/range {v4 .. v9}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V

    .line 22
    :cond_5
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/taobao/windvane/cache/WVCacheManager;->isCacheEnabled(Ljava/lang/String;)Z

    move-result p3

    const-string v0, "UTF-8"

    const/4 v4, 0x0

    if-eqz p3, :cond_6

    .line 23
    invoke-static {p2}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {p3}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 27
    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 29
    :try_start_4
    new-instance v5, Lcom/uc/webview/export/WebResourceResponse;

    const-string v6, "image/png"

    invoke-direct {v5, v6, v0, p3}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v5, v6}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v5

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object p3, v4

    :goto_1
    if-eqz p3, :cond_6

    .line 33
    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 34
    :cond_6
    :goto_2
    invoke-static {}, Landroid/taobao/windvane/cache/WVMemoryCache;->getInstance()Landroid/taobao/windvane/cache/WVMemoryCache;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/taobao/windvane/cache/WVMemoryCache;->getMemoryCacheByUrl(Ljava/lang/String;)Landroid/taobao/windvane/cache/WVMemoryCacheInfo;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p3, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->cachedTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long p1, v5, v7

    if-gez p1, :cond_7

    .line 36
    new-instance v4, Lcom/uc/webview/export/WebResourceResponse;

    sget-object p1, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/util/MimeTypeEnum;->getMimeType()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object p3, p3, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedDatas:[B

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, p1, v0, v1}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 37
    :cond_7
    invoke-static {}, Landroid/taobao/windvane/cache/WVMemoryCache;->getInstance()Landroid/taobao/windvane/cache/WVMemoryCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/cache/WVMemoryCache;->clearCacheByUrl(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WVMemoryCacheInfo \u547d\u4e2d : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 39
    :cond_8
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldInterceptRequest : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method private tryPreCacheResources(Lcom/uc/webview/export/WebView;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->canClearPrecache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->resetClearConfig()V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->clearPrecacheResources([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->setHasPrecache(Z)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->canPrecache()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->resetClearConfig()V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->resetPrecacheConfig()V

    .line 8
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->preMemCacheUrlSet()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    new-instance v3, Lcom/uc/webview/export/WebResourceRequest;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    invoke-virtual {p0, p1, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 15
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "maxAge"

    const-string v2, "3600"

    .line 18
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ignoreQuery"

    const-string v2, "1"

    .line 19
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v1, p1}, Lcom/uc/webview/export/extension/UCCore;->precacheResources(Ljava/util/Map;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->setHasPrecache(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getMetaObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "\""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 4
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "\\"

    const-string v2, ""

    .line 5
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageFinished : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "WVUCWebViewClient"

    invoke-static {v13, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v0, v2, Landroid/taobao/windvane/webview/IFullTrace;

    const-string/jumbo v3, "onPageFinished"

    if-eqz v0, :cond_0

    .line 3
    move-object v0, v2

    check-cast v0, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object v0

    const-string v4, "H5_URL"

    invoke-static {v0, v4, v12}, Landroid/taobao/windvane/util/FullTraceUtils;->addProperty(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :try_start_0
    instance-of v0, v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, v2

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-direct {v1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->getMetaInfo(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "view is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :goto_0
    move-object v0, v2

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v4, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v4, v12, v2}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pageDidFinishLoad(Ljava/lang/String;Lcom/uc/webview/export/WebView;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 11
    iget-boolean v4, v1, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->isError:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 12
    iput-boolean v5, v1, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->isError:Z

    .line 13
    invoke-virtual {v2, v5}, Lcom/uc/webview/export/WebView;->setVisibility(I)V

    .line 14
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 15
    instance-of v4, v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/4 v11, 0x0

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v0, v12, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x191

    .line 17
    invoke-virtual {v0, v3, v11}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    .line 18
    :cond_3
    instance-of v0, v2, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    .line 19
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v3, 0x3ea

    move-object v4, v2

    check-cast v4, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v12, v6}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 20
    invoke-static {}, Landroid/taobao/windvane/jspatch/WVJsPatch;->getInstance()Landroid/taobao/windvane/jspatch/WVJsPatch;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Landroid/taobao/windvane/jspatch/WVJsPatch;->execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    new-array v0, v10, [Ljava/lang/Object;

    const-string v3, "8.5.0"

    aput-object v3, v0, v5

    const-string/jumbo v3, "{\'version\':\'%s\'}"

    .line 21
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindVaneReady"

    .line 22
    invoke-interface {v4, v3, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->isLoadFromCachedPage()Z

    move-result v5

    .line 26
    :cond_5
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v3

    const/4 v6, -0x1

    if-eqz v5, :cond_6

    const/16 v4, 0x48

    const/16 v7, 0x48

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getFromType()I

    move-result v4

    move v7, v4

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p2

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v11, v18

    invoke-interface/range {v3 .. v11}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V

    move-object/from16 v11, v16

    goto :goto_2

    :cond_7
    move-object v0, v11

    .line 27
    :goto_2
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;

    invoke-direct {v3, v1, v12, v14, v15}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;Ljava/lang/String;J)V

    const-string v4, "(function(p){if(!p||!p.timing)return;var t=p.timing,s=t.navigationStart,sc=t.secureConnectionStart,dc=t.domComplete,les=t.loadEventStart,lee=t.loadEventEnd;return JSON.stringify({dns:t.domainLookupEnd-t.domainLookupStart,c:t.connectEnd-t.connectStart,scs:sc>0?sc-s:0,req:t.requestStart-s,rps:t.responseStart-s,rpe:t.responseEnd-s,dl:t.domLoading-s,dcl:t.domContentLoadedEventEnd-s,dc:dc>0?dc-s:0,les:les>0?les-s:0,lee:lee>0?lee-s:0})})(window.performance)"

    invoke-virtual {v2, v4, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LayerType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 30
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$3;

    invoke-direct {v3, v1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$3;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;Lcom/uc/webview/export/WebView;)V

    const-string v5, "javascript:(function(f){if(f.__windvane__.call) return true; else return false})(window)"

    invoke-virtual {v2, v5, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 31
    :cond_8
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v3

    const/4 v5, 0x3

    const-string v6, "WebViewCoreTypeByPV"

    const/4 v7, 0x1

    if-eq v3, v7, :cond_a

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v3

    if-ne v3, v5, :cond_9

    goto :goto_3

    .line 32
    :cond_9
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const-string v3, ""

    invoke-static {v6, v0, v3, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 34
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Android"

    invoke-interface {v0, v3, v4}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitCoreTypeByPV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 35
    :cond_a
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPageFinished.  core type = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v6, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 38
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "U4"

    invoke-interface {v0, v3, v6}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitCoreTypeByPV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v11, :cond_d

    .line 39
    move-object v0, v2

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isStaticWebView()Z

    move-result v0

    if-nez v0, :cond_d

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 41
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 42
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v6

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "-1"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "-1"

    invoke-interface/range {v6 .. v12}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitWebMultiTypeByPV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 43
    :cond_c
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$4;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$4;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V

    invoke-virtual {v11, v4, v0}, Lcom/uc/webview/export/extension/UCExtension;->getCoreStatus(ILandroid/webkit/ValueCallback;)V

    .line 44
    :cond_d
    :goto_4
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    if-ne v0, v5, :cond_f

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->createStaticWebViewIfNeeded(Landroid/content/Context;)V

    .line 47
    :cond_e
    invoke-direct/range {p0 .. p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->tryPreCacheResources(Lcom/uc/webview/export/WebView;)V

    :cond_f
    return-void
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IFullTrace;->getFalcoSpan()Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v0

    const-string/jumbo v1, "onPageStarted"

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v1, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pageDidStartLoad()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->isError:Z

    .line 5
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    invoke-interface {v2, p2, v3, v4}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didPageStartLoadAtTime(Ljava/lang/String;J)V

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v2, :cond_2

    .line 10
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v2

    const/16 v3, 0x3e9

    check-cast p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v1

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    const/16 p1, 0x190

    const/4 p3, 0x0

    .line 11
    invoke-virtual {v0, p1, p3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 13
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->tryToRunTailBridges()V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onPageStarted : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVUCWebViewClient"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive error, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebViewClient"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v3, 0x3ed

    move-object v4, p1

    check-cast v4, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    .line 6
    invoke-virtual {v0, v3, v4, p4, v5}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 8
    instance-of v3, p1, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz v3, :cond_2

    .line 9
    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IFullTrace;->getFalcoSpan()Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "onReceivedError"

    .line 10
    invoke-static {v3, v4}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "errorCode"

    invoke-interface {v3, v6, v5}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Ljava/lang/Number;)Lcom/taobao/opentracing/api/Span;

    const-string v5, "description"

    .line 12
    invoke-interface {v3, v5, p3}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    const-string v5, "failingUrl"

    .line 13
    invoke-interface {v3, v5, p4}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    .line 14
    invoke-interface {v3, v4}, Lcom/taobao/analysis/v3/FalcoSpan;->finish(Ljava/lang/String;)V

    .line 15
    :cond_2
    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v4, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pageDidFailLoadWithError(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x10

    if-le p2, v4, :cond_3

    if-ltz p2, :cond_4

    :cond_3
    const/16 v4, -0x50

    if-eq p2, v4, :cond_4

    const/16 v4, -0x32

    if-ne p2, v4, :cond_6

    .line 16
    :cond_4
    instance-of v4, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "cause"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 19
    invoke-interface {v4, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->isError:Z

    const/4 v1, 0x4

    .line 21
    invoke-virtual {p1, v1}, Lcom/uc/webview/export/WebView;->setVisibility(I)V

    const/16 p1, 0x192

    .line 22
    invoke-virtual {v3, p1, v4}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    .line 23
    :cond_6
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 24
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object p1

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move-object p4, v0

    :goto_0
    invoke-interface {p1, p4, p2, p3}, Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedSslError  url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVUCWebViewClient"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 5
    instance-of v2, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "cause"

    const-string v4, "SSL_ERROR"

    .line 7
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "url"

    .line 8
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/16 v4, 0x192

    invoke-virtual {v3, v4, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    .line 10
    :cond_1
    instance-of v2, p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/16 v3, 0x3ee

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 12
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object v2

    invoke-interface {v2, v1, v3, v0}, Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/RenderProcessGoneDetail;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRenderProcessGone webview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", crash:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/uc/webview/export/extension/RenderProcessGoneDetail;->didCrash()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", priority:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p2}, Lcom/uc/webview/export/extension/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WVUCWebViewClient.sandbox"

    .line 3
    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->crashCount:I

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-lt v0, v5, :cond_1

    .line 5
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v6, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    const-string v7, "R_Fail"

    invoke-interface {v0, v5, v7, v6}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitRenderType(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    :cond_0
    iput v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->crashCount:I

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/uc/webview/export/extension/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 10
    invoke-static {v3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :cond_1
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    add-int/2addr v0, p2

    .line 11
    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->crashCount:I

    .line 12
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mRenderProcessHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mRenderProcessHandler:Landroid/os/Handler;

    .line 14
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mRenderProcessHandler:Landroid/os/Handler;

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$6;

    invoke-direct {v1, p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$6;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;Lcom/uc/webview/export/WebView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mRenderProcessHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mCrashCountReseter:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mRenderProcessHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mCrashCountReseter:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p2

    :cond_3
    const-string/jumbo p1, "onRenderProcessGone - WebView is null"

    .line 17
    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 7

    .line 1
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const-string v1, "WVUCWebViewClient"

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const-string p1, "Only U4 WebView will use shouldInterceptRequest(API Level 21), return null."

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    if-eqz p2, :cond_6

    .line 3
    invoke-virtual {p2}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->hasPrecacheDoc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->clearPrecacheDoc(Ljava/lang/String;)V

    return-object v3

    .line 7
    :cond_2
    instance-of v1, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v1, :cond_5

    .line 8
    instance-of v1, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    .line 9
    move-object v1, p1

    check-cast v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v2, 0x2

    .line 10
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    const/16 v4, 0x3f0

    move-object v5, p1

    check-cast v5, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 11
    invoke-virtual {p2}, Lcom/uc/webview/export/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    aput-object p2, v3, v6

    const/4 p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, p2

    .line 12
    invoke-virtual {v1, v4, v5, v0, v3}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object p2

    .line 13
    invoke-direct {p0, p1, v0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->shouldInterceptRequestInternal(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/taobao/windvane/service/WVEventResult;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v3

    :cond_6
    :goto_0
    const-string/jumbo p1, "shouldInterceptRequest, invalid request."

    .line 14
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 6

    .line 15
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string p1, "WVUCWebViewClient"

    const-string p2, "U4 WebView will not use shouldInterceptRequest(API Level 11), return null."

    .line 16
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 17
    :cond_0
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_3

    .line 18
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 19
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x2

    :cond_1
    move v1, v2

    .line 20
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v2, 0x3ec

    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    .line 22
    invoke-virtual {v0, v2, v3, p2, v4}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->shouldInterceptRequestInternal(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/taobao/windvane/service/WVEventResult;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "WVUCWebViewClient"

    .line 1
    :try_start_0
    instance-of v1, p1, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz v1, :cond_0

    .line 2
    move-object v1, p1

    check-cast v1, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IFullTrace;->getFalcoSpan()Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Landroid/taobao/windvane/util/FullTraceUtils;->addCustomStageAndFinish(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V

    const-string/jumbo v1, "windvaneSubPage"

    const-string v2, "H5SubPage"

    .line 4
    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IFullTrace;->getOpenTracingContext()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v1

    .line 5
    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v2, v1}, Landroid/taobao/windvane/webview/IFullTrace;->setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpan failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {p2, v1}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "cause"

    const-string v3, "ACCESS_FORBIDDEN"

    .line 11
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 12
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    check-cast p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/16 p2, 0x192

    invoke-virtual {p1, p2, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1, v0}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return v2

    .line 15
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {p2, v1, v3}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldOverrideUrlLoading filter url="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    const-string v0, "UrlConfigFilterType"

    const-string v1, "WVUCWebView.shouldOverrideUrlLoading"

    .line 17
    invoke-static {v0, p1, v1, p2}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    .line 18
    :cond_3
    instance-of v1, p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 19
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    const/16 v5, 0x3eb

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v3, p2, v6}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v1

    iget-boolean v1, v1, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v1, :cond_4

    return v2

    .line 20
    :cond_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "mailto:"

    .line 21
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "sms:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_3

    .line 22
    :cond_5
    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v5, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v5, p2}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->receiveHtmlUrl(Ljava/lang/String;)V

    .line 23
    :try_start_1
    instance-of v5, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 24
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v5

    invoke-interface {v5}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->isOpenURLIntercept()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 25
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->isNeedupdateURLRule(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->updateURLRule()V

    .line 27
    :cond_6
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4, v1, v5, p2}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->shouldOverrideUrlLoading(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intercept url : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldOverrideUrlLoading: doFilter error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_7
    instance-of v1, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v1, :cond_8

    .line 31
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v1

    invoke-virtual {v1, v3, p2}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->onUrlChange(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setCachedUrl(Ljava/lang/String;)V

    .line 33
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "userAgent"

    .line 35
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->getInstance()Lcom/taobao/weaver/prefetch/WMLPrefetch;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->prefetchData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to call prefetch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 40
    :cond_9
    :goto_3
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    .line 41
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_a

    .line 42
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 43
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldOverrideUrlLoading: ActivityNotFoundException, url="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return v2
.end method
