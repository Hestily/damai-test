.class Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView$1;->this$0:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView$1;->this$0:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView$1;->this$0:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/extension/UCExtension;->setIsPreRender(Z)V

    :cond_0
    return-void
.end method
