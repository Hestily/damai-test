.class Landroid/taobao/windvane/webview/WVWebView$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/webview/WVWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/webview/WVWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/webview/WVWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$1;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$1;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView$1;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v1}, Landroid/taobao/windvane/webview/WVWebView;->access$000(Landroid/taobao/windvane/webview/WVWebView;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Long click on WebView, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVWebView"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    return v0

    .line 6
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView$1;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/webview/WVWebView;->access$102(Landroid/taobao/windvane/webview/WVWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$1;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    new-instance v0, Landroid/taobao/windvane/view/PopupWindowController;

    iget-object v1, p1, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/taobao/windvane/webview/WVWebView;->access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView$1;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v3}, Landroid/taobao/windvane/webview/WVWebView;->access$400(Landroid/taobao/windvane/webview/WVWebView;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/taobao/windvane/view/PopupWindowController;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->access$202(Landroid/taobao/windvane/webview/WVWebView;Landroid/taobao/windvane/view/PopupWindowController;)Landroid/taobao/windvane/view/PopupWindowController;

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$1;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {p1}, Landroid/taobao/windvane/webview/WVWebView;->access$200(Landroid/taobao/windvane/webview/WVWebView;)Landroid/taobao/windvane/view/PopupWindowController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/view/PopupWindowController;->show()V

    const/4 p1, 0x1

    return p1
.end method
