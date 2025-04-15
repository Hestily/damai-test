.class public Landroid/taobao/windvane/jsbridge/WVCallBackContext;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCallBackContext"


# instance fields
.field private failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

.field private instancename:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mNotiNavtive:Z

.field private methodname:Ljava/lang/String;

.field private objectname:Ljava/lang/String;

.field private succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

.field private token:Ljava/lang/String;

.field private webview:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 9
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->objectname:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->methodname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 16
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->objectname:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->methodname:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

    .line 20
    iput-object p5, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    return-void
.end method

.method private static callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    const-string v1, "WVCallBackContext"

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return param is not a valid json!\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p2, "{}"

    .line 5
    :cond_1
    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->formatJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 6
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 7
    :try_start_2
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVCallBackContext$1;

    invoke-direct {p2, p0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext$1;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->runOnUiThread(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 8
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callback error. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static fireEvent(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "WVCallBackContext"

    const-string v1, "call fireEvent "

    .line 4
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/16 v4, 0xbc5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1, v2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object v5, v0, v1

    const-string/jumbo p1, "window.WindVane && window.WindVane.fireEvent(\'%s\', \'%%s\', %s);"

    .line 6
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static formatJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "\u2028"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "\\u2028"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string/jumbo v0, "\u2029"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "\\u2029"

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static runOnUiThread(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/taobao/windvane/webview/IWVWebView;->_post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public commitJsBridgeReturn(Landroid/taobao/windvane/jsbridge/WVResult;)V
    .locals 9

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->objectname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->methodname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->instancename:Ljava/lang/String;

    const-string/jumbo v1, "ret"

    const-string v2, "HY_FAILED_EMPTY"

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "msg"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    if-nez p1, :cond_0

    const-string/jumbo p1, "unknown"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v8, p1

    .line 6
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v3

    invoke-interface/range {v3 .. v8}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public error()V
    .locals 1

    const-string/jumbo v0, "{}"

    .line 1
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->commitJsBridgeReturn(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 7

    const-string v0, "WVCallBackContext"

    const-string v1, "call error "

    .line 8
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;->fail(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v3, 0xbc4

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 13
    iput-boolean v2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 14
    iput-object v6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 15
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "javascript:window.WindVane&&window.WindVane.onFailure(%s,\'%%s\');"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_FAILED"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "{}"

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "WVCallBackContext"

    const-string v1, "call fireEvent "

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    aput-object p2, v1, v4

    const/16 v5, 0xbc5

    invoke-virtual {v0, v5, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 p1, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "window.WindVane && window.WindVane.fireEvent(\'%s\', \'%%s\', %s);"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getWebview()Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method public setInstancename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->instancename:Ljava/lang/String;

    return-void
.end method

.method public setNeedfireNativeEvent(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 2
    iput-boolean p2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setNeedfireNativeEvent : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVCallBackContext"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    return-void
.end method

.method public setWebview(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVResult;->RET_SUCCESS:Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method public success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 3
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->commitJsBridgeReturn(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 7

    const-string v0, "WVCallBackContext"

    const-string v1, "call success "

    .line 6
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;->succeed(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v3, 0xbc3

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 11
    iput-boolean v2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 12
    iput-object v6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "javascript:window.WindVane&&window.WindVane.onSuccess(%s,\'%%s\');"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public successAndKeepAlive(Ljava/lang/String;)V
    .locals 4

    const-string v0, "WVCallBackContext"

    const-string v1, "call success and keep alive"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/taobao/windvane/jsbridge/IExtJsApiSuccessCallBack;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/taobao/windvane/jsbridge/IExtJsApiSuccessCallBack;

    invoke-interface {v0, p1}, Landroid/taobao/windvane/jsbridge/IExtJsApiSuccessCallBack;->successAndKeepAlive(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "javascript:window.WindVane&&window.WindVane.onSuccess(\'%s\',\'%%s\', true);"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
