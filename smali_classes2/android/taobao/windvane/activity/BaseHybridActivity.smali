.class public abstract Landroid/taobao/windvane/activity/BaseHybridActivity;
.super Landroid/app/Activity;
.source "Taobao"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mViewController:Landroid/taobao/windvane/webview/WVViewController;

.field protected mWebView:Landroid/webkit/WebView;

.field protected postData:[B

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->url:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->postData:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/webview/WVWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PARAMS"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/webview/ParamsParcelable;

    const-string v1, "URL"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->url:Ljava/lang/String;

    const-string v1, "DATA"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->postData:[B

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance p1, Landroid/taobao/windvane/webview/WVViewController;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/webview/WVViewController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mViewController:Landroid/taobao/windvane/webview/WVViewController;

    .line 8
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/webview/WVViewController;->init(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mViewController:Landroid/taobao/windvane/webview/WVViewController;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVViewController;->getWebview()Landroid/taobao/windvane/webview/WVWebView;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mViewController:Landroid/taobao/windvane/webview/WVViewController;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVViewController;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mViewController:Landroid/taobao/windvane/webview/WVViewController;

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/activity/BaseHybridActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
