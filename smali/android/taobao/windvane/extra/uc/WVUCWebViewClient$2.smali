.class Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field final synthetic val$mPageFinshTime:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;->val$mPageFinshTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didPagePerformanceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object p1

    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;->val$url:Ljava/lang/String;

    iget-wide v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$2;->val$mPageFinshTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didPageFinishLoadAtTime(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
