.class Landroid/taobao/windvane/extra/uc/WVUCClient$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCClient;->onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCClient;

.field final synthetic val$webView:Lcom/uc/webview/export/WebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCClient;Lcom/uc/webview/export/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCClient$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCClient;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCClient$1;->val$webView:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient$1;->val$webView:Lcom/uc/webview/export/WebView;

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknow"

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->crashCount:I

    if-eqz v0, :cond_1

    const-string v0, "Recover_Success"

    goto :goto_0

    :cond_1
    const-string v0, "R_Success"

    .line 3
    :goto_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCClient$1;->val$webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitRenderType(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sandbox"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
