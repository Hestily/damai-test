.class Landroid/taobao/windvane/extra/uc/WVUCWebView$1$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/taobao/windvane/extra/uc/WVUCWebView$1;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$1$2;->this$1:Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$1$2;->this$1:Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$1$2;->this$1:Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    iget-object v1, v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-static {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$100(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$1$2;->this$1:Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v2, v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Landroid/taobao/windvane/util/ImageTool;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method
