.class Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$6;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->onRenderProcessGone(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/RenderProcessGoneDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field final synthetic val$webview:Lcom/uc/webview/export/WebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;Lcom/uc/webview/export/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$6;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$6;->val$webview:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$6;->val$webview:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->isDestroied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$6;->val$webview:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->reload()V

    :cond_0
    return-void
.end method
