.class public Landroid/taobao/windvane/jsbridge/WVJsPreprocessor;
.super Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public apiAuthCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->checkJsApiPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UrlConfigJsApiType"

    invoke-static {p3, v0, p2, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected needAuth(Landroid/taobao/windvane/webview/IWVWebView;)Z
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->useURLConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->canUseGlobalUrlConfig()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->canUseUrlConfig()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method
