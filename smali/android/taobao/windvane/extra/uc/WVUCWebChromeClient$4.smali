.class Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

.field final synthetic val$fileChooserParams:Lcom/uc/webview/export/WebChromeClient$FileChooserParams;

.field final synthetic val$webView:Lcom/uc/webview/export/WebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;Lcom/uc/webview/export/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;->val$fileChooserParams:Lcom/uc/webview/export/WebChromeClient$FileChooserParams;

    iput-object p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;->val$webView:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "WVUCWebChromeClient"

    const-string v1, " onShowFileChooser permission granted"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;->val$fileChooserParams:Lcom/uc/webview/export/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$4;->val$webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 4
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Landroid/app/Activity;

    const-string v2, "choose"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
