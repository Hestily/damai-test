.class public Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "Taobao"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

.field protected mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

.field private mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "url"

    .line 2
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 8
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 9
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 10
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-direct {v1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->setWebViewClient(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->setWebchormeClient(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V

    .line 6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget-object p1, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->TAG:Ljava/lang/String;

    const-string p2, "image urls is null"

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->removeAllViews()V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 7
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 8
    :cond_1
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    .line 9
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onPause()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onResume()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public setWebViewClient(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    :cond_0
    return-void
.end method

.method public setWebchormeClient(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    :cond_0
    return-void
.end method
