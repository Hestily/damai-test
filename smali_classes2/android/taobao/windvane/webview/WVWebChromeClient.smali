.class public Landroid/taobao/windvane/webview/WVWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "Taobao"


# static fields
.field private static final MAX_QUOTA:J = 0x1400000L

.field private static final TAG:Ljava/lang/String; = "WVWebChromeClient"


# instance fields
.field public extraWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected mContext:Landroid/content/Context;

.field public mWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 7
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WVWebChromeClient"

    if-nez v2, :cond_1

    const-string v2, "hybrid://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Call from console.log"

    .line 4
    invoke-static {v3, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p1

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {p1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string/jumbo v4, "wvNativeCallback"

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "/"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v1

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 11
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr p1, v1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v2}, Landroid/taobao/windvane/util/WVNativeCallbackUtil;->getNativeCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 15
    invoke-static {v2}, Landroid/taobao/windvane/util/WVNativeCallbackUtil;->clearNativeCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeCallback failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    .line 17
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "onConsoleMessage: %s at %s: %s"

    .line 18
    sget-object v4, Landroid/taobao/windvane/webview/WVWebChromeClient$1;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v1, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_4

    new-array v4, v5, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 20
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 21
    invoke-static {v3, v0, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-array v4, v5, [Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 23
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 24
    invoke-static {v3, v0, v4}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-array v4, v5, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 26
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 27
    invoke-static {v3, v0, v4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-array v4, v5, [Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 29
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 30
    invoke-static {v3, v0, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_7
    :goto_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebChromeClient;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 33
    :cond_8
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    const-wide/32 p1, 0x1400000

    cmp-long p7, p5, p1

    if-gez p7, :cond_0

    .line 1
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 13

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const-string v8, "WVWebChromeClient"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v9

    aput-object v4, v0, v10

    aput-object v2, v0, v6

    const-string/jumbo v11, "onJsPrompt: %s; defaultValue: %s; url: %s"

    .line 2
    invoke-static {v8, v11, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    instance-of v0, v1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v11, 0x7d3

    move-object v12, v1

    check-cast v12, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v4, v7, v10

    aput-object v5, v7, v6

    invoke-virtual {v0, v11, v12, p2, v7}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_1

    return v10

    :cond_1
    if-eqz v4, :cond_2

    const-string/jumbo v0, "wv_hybrid:"

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Call from console.prompt"

    .line 6
    invoke-static {v8, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v0

    check-cast v1, Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, v1, v3}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    const-string v0, ""

    .line 8
    invoke-virtual {v5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return v10

    :cond_2
    move-object v6, p0

    .line 9
    iget-object v0, v6, Landroid/taobao/windvane/webview/WVWebChromeClient;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0

    :cond_3
    return v9
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
