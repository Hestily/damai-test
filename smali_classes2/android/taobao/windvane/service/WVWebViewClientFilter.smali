.class public abstract Landroid/taobao/windvane/service/WVWebViewClientFilter;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 4

    .line 1
    new-instance v0, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    const/16 v2, 0x3f0

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1, p3}, Landroid/taobao/windvane/service/WVWebViewClientFilter;->onReceivedError(Landroid/taobao/windvane/webview/IWVWebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/service/WVWebViewClientFilter;->shouldOverrideUrlLoading(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    move-result p1

    .line 4
    iput-boolean p1, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/service/WVWebViewClientFilter;->onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/service/WVWebViewClientFilter;->onPageStarted(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    :pswitch_4
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/service/WVWebViewClientFilter;->shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iput-boolean v3, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    .line 9
    iput-object p1, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedError(Landroid/taobao/windvane/webview/IWVWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
