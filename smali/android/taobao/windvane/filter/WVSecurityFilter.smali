.class public Landroid/taobao/windvane/filter/WVSecurityFilter;
.super Landroid/taobao/windvane/service/WVWebViewClientFilter;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/service/WVWebViewClientFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WVSecurityFilter shouldInterceptRequest url ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVSecurityFilter"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    const-string p2, ""

    const-string/jumbo v0, "utf-8"

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, v1}, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/service/WVWebViewClientFilter;->shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    move-result-object p1

    return-object p1
.end method
