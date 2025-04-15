.class public Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;
.super Lcom/uc/webview/export/WebChromeClient;
.source "Taobao"


# static fields
.field public static final FilePathCallbackID:I = 0xf

.field private static final KEY_CANCEL:Ljava/lang/String;

.field private static final KEY_CONFIRM:Ljava/lang/String;

.field private static final KEY_FROM:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WVUCWebChromeClient"


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6765\u81ea\u4e8e\uff1a"

    goto :goto_0

    :cond_0
    const-string v0, "From: "

    :goto_0
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_FROM:Ljava/lang/String;

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u786e\u5b9a"

    goto :goto_1

    :cond_1
    const-string v0, "OK"

    :goto_1
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_CONFIRM:Ljava/lang/String;

    .line 3
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u53d6\u6d88"

    goto :goto_2

    :cond_2
    const-string v0, "Cancel"

    :goto_2
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_CANCEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 7
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$001(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;)V

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

    const/4 v2, 0x0

    const-string v3, "WVUCWebChromeClient"

    if-eqz v0, :cond_3

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "hybrid://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Call from console.log"

    .line 4
    invoke-static {v3, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p1

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {p1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    return v1

    :cond_1
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
    sget-object v4, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$13;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

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

    .line 28
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_7

    .line 29
    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/extra/performance/WVErrorManager;->reportJSError(Landroid/webkit/ConsoleMessage;)V

    .line 30
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedJSError()V

    goto :goto_1

    :cond_6
    new-array v4, v5, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 32
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 33
    invoke-static {v3, v0, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-interface {p2, p1, v0, v1}, Lcom/uc/webview/export/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->isDestroied()Z

    move-result v0

    const-string v1, "WVUCWebChromeClient"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "cannot call [onJsAlert], for webview has been destroyed"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p4}, Lcom/uc/webview/export/JsResult;->confirm()V

    return v2

    .line 6
    :cond_1
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_FROM:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_CONFIRM:Ljava/lang/String;

    new-instance p3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$5;

    invoke-direct {p3, p0, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$5;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsResult;)V

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12
    new-instance p1, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$6;

    invoke-direct {p1, p0, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$6;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p4}, Lcom/uc/webview/export/JsResult;->confirm()V

    :goto_0
    return v2
.end method

.method public onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->isDestroied()Z

    move-result v0

    const-string v1, "WVUCWebChromeClient"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "cannot call [onJsConfirm], for webview has been destroyed"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p4}, Lcom/uc/webview/export/JsResult;->confirm()V

    return v2

    .line 6
    :cond_1
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_FROM:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_CONFIRM:Ljava/lang/String;

    new-instance p3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$8;

    invoke-direct {p3, p0, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$8;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsResult;)V

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_CANCEL:Ljava/lang/String;

    new-instance p3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$7;

    invoke-direct {p3, p0, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$7;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsResult;)V

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    new-instance p1, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$9;

    invoke-direct {p1, p0, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {p4}, Lcom/uc/webview/export/JsResult;->confirm()V

    :goto_0
    return v2
.end method

.method public onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->isDestroied()Z

    move-result v0

    const-string v1, "WVUCWebChromeClient"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "cannot call [onJsPrompt], for webview has been destroyed"

    .line 2
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 4
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {p5}, Lcom/uc/webview/export/JsPromptResult;->confirm()V

    return v2

    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v3, "wv_hybrid:"

    .line 6
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p2

    check-cast p1, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {p2, p1, p3}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    const-string p1, ""

    .line 8
    invoke-interface {p5, p1}, Lcom/uc/webview/export/JsPromptResult;->confirm(Ljava/lang/String;)V

    return v2

    .line 9
    :cond_2
    :try_start_0
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_FROM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p4, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_CONFIRM:Ljava/lang/String;

    new-instance p3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$12;

    invoke-direct {p3, p0, p5}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$12;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsPromptResult;)V

    .line 17
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->KEY_CANCEL:Ljava/lang/String;

    new-instance p3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$11;

    invoke-direct {p3, p0, p5}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$11;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsPromptResult;)V

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$10;

    invoke-direct {p2, p0, p5}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$10;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsPromptResult;)V

    .line 19
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {p5}, Lcom/uc/webview/export/JsPromptResult;->confirm()V

    :goto_0
    return v2
.end method

.method public onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore default title : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVUCWebChromeClient"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/uc/webview/export/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string v0, "WVUCWebChromeClient"

    const-string v1, " onShowFileChooser"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v2

    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;

    invoke-direct {v3, p0, p3, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;Lcom/uc/webview/export/WebView;)V

    .line 4
    invoke-virtual {v2, v3}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p3, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$3;

    invoke-direct {p3, p0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$3;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Landroid/webkit/ValueCallback;)V

    .line 5
    invoke-virtual {p1, p3}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WVUCWebChromeClient"

    const-string v1, " openFileChooser"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-nez v1, :cond_0

    const-string p1, "context is null"

    .line 3
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 5
    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1

    const-string p1, "context can not be application"

    .line 6
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v1

    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$2;

    invoke-direct {v2, p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$2;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Landroid/webkit/ValueCallback;)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$1;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
