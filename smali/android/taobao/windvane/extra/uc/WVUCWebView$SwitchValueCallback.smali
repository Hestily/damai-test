.class final Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchValueCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# instance fields
.field startTime:J


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;->startTime:J

    .line 3
    iput-wide p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;->startTime:J

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
    .locals 1

    .line 2
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;)V

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V

    return-void
.end method
