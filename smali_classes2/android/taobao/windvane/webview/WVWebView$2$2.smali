.class Landroid/taobao/windvane/webview/WVWebView$2$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/webview/WVWebView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/taobao/windvane/webview/WVWebView$2;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/webview/WVWebView$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$2$2;->this$1:Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView$2$2;->this$1:Landroid/taobao/windvane/webview/WVWebView$2;

    iget-object v0, v0, Landroid/taobao/windvane/webview/WVWebView$2;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v0, v0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView$2$2;->this$1:Landroid/taobao/windvane/webview/WVWebView$2;

    iget-object v1, v1, Landroid/taobao/windvane/webview/WVWebView$2;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v1}, Landroid/taobao/windvane/webview/WVWebView;->access$100(Landroid/taobao/windvane/webview/WVWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView$2$2;->this$1:Landroid/taobao/windvane/webview/WVWebView$2;

    iget-object v2, v2, Landroid/taobao/windvane/webview/WVWebView$2;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v2, v2, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Landroid/taobao/windvane/util/ImageTool;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method
