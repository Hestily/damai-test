.class Landroid/taobao/windvane/extra/uc/WVUCWebView$7;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const-string p1, "WVUCWebView"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$1200(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Long click on WebView, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    return v0

    .line 7
    :cond_4
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$102(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    new-instance v0, Landroid/taobao/windvane/view/PopupWindowController;

    .line 9
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$000(Landroid/taobao/windvane/extra/uc/WVUCWebView;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 10
    invoke-static {v4}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$1300(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/view/PopupWindowController;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-static {p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$202(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/taobao/windvane/view/PopupWindowController;)Landroid/taobao/windvane/view/PopupWindowController;

    .line 12
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$200(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Landroid/taobao/windvane/view/PopupWindowController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/view/PopupWindowController;->show()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHitTestResult error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
