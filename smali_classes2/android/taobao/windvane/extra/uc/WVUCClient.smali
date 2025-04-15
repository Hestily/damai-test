.class public Landroid/taobao/windvane/extra/uc/WVUCClient;
.super Lcom/uc/webview/export/extension/UCClient;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUCClient"


# instance fields
.field tStart:Ljava/lang/String;

.field webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->tStart:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    const-string v0, "0"

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->tStart:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method


# virtual methods
.method public getCachedFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/taobao/windvane/extra/config/WindVaneUrlCacheManager;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    const-string/jumbo v1, "viewType"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "EmbedView"

    if-eqz v2, :cond_2

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bridgeId"

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 5
    :goto_0
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {v0, v1, v2, p1}, Landroid/taobao/windvane/embed/WVEVManager;->createEV(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;Lcom/uc/webview/export/extension/EmbedViewConfig;)Landroid/taobao/windvane/embed/BaseEmbedView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "failed to create embedView"

    .line 6
    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p2, p1}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnParamChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnParamChangedListener;)V

    .line 8
    invoke-interface {p2, p1}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnStateChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;)V

    .line 9
    invoke-interface {p2, p1}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnVisibilityChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;)V

    return-object p1

    :cond_2
    const-string/jumbo p1, "viewType should not be lost"

    .line 10
    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_1
    new-instance p1, Landroid/taobao/windvane/embed/Empty;

    invoke-direct {p1}, Landroid/taobao/windvane/embed/Empty;-><init>()V

    .line 12
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-virtual {p1, v3, v1, p2, v0}, Landroid/taobao/windvane/embed/BaseEmbedView;->init(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;Lcom/uc/webview/export/extension/EmbedViewConfig;)Z

    return-object p1
.end method

.method public onGpuProcessGone(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "sandbox"

    const-string/jumbo v1, "onGpuProcessGone"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasWebGl"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-boolean v0, Landroid/taobao/windvane/config/GlobalConfig;->isBackground:Z

    const-string v1, "GPU"

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpu process is killed, url = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] , upload information!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "GpuProcessGone"

    .line 7
    invoke-static {v3, v0, v2, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    iget-object v2, v2, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpu process error, need not reload page, url = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableGpuGoneReload:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->refresh()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpu process error, reload page, url = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 11

    const-string v0, "UC_T2"

    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 1
    :try_start_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    instance-of v1, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v1, :cond_19

    .line 7
    move-object v1, p1

    check-cast v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPEA_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPEB_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto/16 :goto_a

    :cond_2
    const/16 v1, 0x6b

    const-string/jumbo v2, "sandbox"

    if-ne p2, v1, :cond_3

    const-string/jumbo v0, "onRenderProcessReady"

    .line 11
    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_19

    .line 13
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 14
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCClient$1;

    invoke-direct {v2, p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCClient$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCClient;Lcom/uc/webview/export/WebView;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/extension/UCExtension;->getCoreStatus(ILandroid/webkit/ValueCallback;)V

    goto/16 :goto_a

    :cond_3
    const/16 v1, 0x6c

    if-ne p2, v1, :cond_4

    const-string v0, "WEBVIEW_EVENT_TYPE_DESTORY_NON_ISOLATE_STATIC_WEBVIEW"

    .line 15
    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_19

    .line 17
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroyStaticWebViewIfNeeded()V

    goto/16 :goto_a

    :cond_4
    const/16 v1, 0x6d

    if-ne p2, v1, :cond_5

    const-string v0, "WEBVIEW_EVENT_TYPE_CREATE_ISOLATE_STATIC_WEBVIEW"

    .line 18
    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_19

    .line 20
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->createStaticWebViewIfNeeded(Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_5
    const/4 v1, 0x4

    const-string/jumbo v2, "time"

    if-ne p2, v1, :cond_6

    .line 22
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_19

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 23
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->tStart:Ljava/lang/String;

    goto/16 :goto_a

    :cond_6
    const/4 v1, 0x6

    const-string v3, "AIT"

    const-string v4, "0"

    const-string/jumbo v5, "ts"

    if-ne p2, v1, :cond_8

    .line 24
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_7

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 26
    :cond_7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 27
    :try_start_1
    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v2, v0, v1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->recordUCT1(J)V

    .line 28
    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedT1(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :catchall_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UC_T1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_8
    const/16 v1, 0xe

    const-string v6, ""

    const-string/jumbo v7, "url"

    if-ne p2, v1, :cond_12

    .line 30
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 31
    move-object v1, p3

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 32
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_9
    move-object v5, v4

    .line 33
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 34
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 35
    instance-of v2, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v2, :cond_a

    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    if-eqz v2, :cond_a

    .line 36
    iput-object v4, v2, Landroid/taobao/windvane/extra/performance2/WVWPData;->t2:Ljava/lang/String;

    .line 37
    :cond_a
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 38
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    :cond_b
    move-object v1, v4

    move-object v4, v5

    goto :goto_2

    :cond_c
    move-object v1, v4

    .line 39
    :goto_2
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 40
    :try_start_2
    instance-of v2, p1, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz v2, :cond_d

    .line 41
    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v2}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;)V

    .line 42
    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v2}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/util/FullTraceUtils;->addProperty(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0, v7, v8}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->recordUCT2(J)V

    if-eqz v1, :cond_e

    .line 44
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v6, v0, v1}, Landroid/taobao/windvane/extra/performance2/UCTracker;->commitUCT2(Ljava/lang/String;J)V

    .line 45
    :cond_e
    invoke-static {v7, v8}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 46
    sget-object v1, Ltb/yy3;->b:Ltb/yy3;

    invoke-virtual {v1}, Ltb/yy3;->getLauncherProcedure()Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v2, "LauncherProcedure is not Alive"

    const-string v5, "H5_UC_T2"

    const-string v6, "WVUCClient"

    if-eqz v1, :cond_f

    .line 47
    :try_start_3
    invoke-interface {v1}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 48
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v1, v5, v9, v10}, Lcom/taobao/monitor/procedure/IProcedure;->stage(Ljava/lang/String;J)Lcom/taobao/monitor/procedure/IProcedure;

    goto :goto_3

    .line 49
    :cond_f
    invoke-static {v6, v2}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_3
    sget-object v1, Ltb/yy3;->b:Ltb/yy3;

    invoke-virtual {v1}, Ltb/yy3;->getCurrentActivityProcedure()Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 51
    invoke-interface {v1}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v1, v5, v9, v10}, Lcom/taobao/monitor/procedure/IProcedure;->stage(Ljava/lang/String;J)Lcom/taobao/monitor/procedure/IProcedure;

    goto :goto_4

    :cond_10
    const-string v1, "CurrentActivityProcedure is not Alive"

    .line 53
    invoke-static {v6, v1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_4
    sget-object v1, Ltb/yy3;->b:Ltb/yy3;

    invoke-virtual {v1, p1}, Ltb/yy3;->getProcedure(Landroid/view/View;)Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 55
    invoke-interface {v1}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v1, v5, v9, v10}, Lcom/taobao/monitor/procedure/IProcedure;->stage(Ljava/lang/String;J)Lcom/taobao/monitor/procedure/IProcedure;

    goto :goto_5

    .line 57
    :cond_11
    invoke-static {v6, v2}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "H5_UC_T2 time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Ltb/sm3;->a:Ltb/sm3;

    invoke-virtual {v0, p1}, Ltb/sm3;->getPageGroup(Landroid/view/View;)Lcom/taobao/monitor/procedure/IPage;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/monitor/procedure/IPage;->getPageRenderStandard()Lcom/taobao/monitor/procedure/IPage$PageRenderStandard;

    move-result-object v0

    .line 60
    invoke-static {v7, v8}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/taobao/monitor/procedure/IPage$PageRenderStandard;->onPageVisible(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UC_T2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_12
    const/16 v0, 0x14

    if-ne p2, v0, :cond_18

    .line 63
    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "linkId"

    if-eqz v0, :cond_13

    .line 64
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 66
    :try_start_5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_2
    move-object v2, v6

    goto :goto_8

    .line 67
    :cond_13
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_16

    .line 68
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 69
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_7

    :cond_14
    move-object v2, v6

    .line 70
    :goto_7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    :catchall_3
    :cond_15
    :goto_8
    move-object v0, v6

    move-object v6, v2

    goto :goto_9

    :cond_16
    move-object v0, v6

    .line 72
    :goto_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 73
    invoke-static {}, Landroid/taobao/windvane/ha/UCHAReporter;->getInstance()Landroid/taobao/windvane/ha/UCHAReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/taobao/windvane/ha/UCHAReporter;->putLinkIdWithUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UCHA"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_18
    const/16 v0, 0x6a

    if-ne p2, v0, :cond_19

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "page use webgl, url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPU"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 77
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitUseWebgl(Ljava/lang/String;)V

    .line 78
    :catchall_4
    :cond_19
    :goto_a
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/extension/UCClient;->onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V

    return-void
.end method
