.class Landroid/taobao/windvane/webview/WVWebView$2$1;
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
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$2$1;->this$1:Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView$2$1;->this$1:Landroid/taobao/windvane/webview/WVWebView$2;

    iget-object v0, v0, Landroid/taobao/windvane/webview/WVWebView$2;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v0, v0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
