.class public Landroid/taobao/windvane/monitor/WVMonitor;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final OPTION_ERROR:I = 0x2

.field public static final OPTION_JSBRIDGE:I = 0x4

.field public static final OPTION_PERFORMANCE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitor;->init(I)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->init()V

    return-void
.end method

.method public static init(I)V
    .locals 2

    .line 3
    new-instance v0, Landroid/taobao/windvane/monitor/WVMonitorImpl;

    invoke-direct {v0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    .line 4
    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitorService;->registerPerformanceMonitor(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;)V

    .line 5
    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitorService;->registerConfigMonitor(Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;)V

    .line 6
    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitorService;->registerWVMonitor(Landroid/taobao/windvane/monitor/WVMonitorInterface;)V

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_1

    .line 7
    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitorService;->registerErrorMonitor(Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;)V

    :cond_1
    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_2

    .line 8
    new-instance p0, Landroid/taobao/windvane/monitor/WVJsMonitor;

    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVJsMonitor;-><init>()V

    invoke-static {p0}, Landroid/taobao/windvane/monitor/WVMonitorService;->registerJsBridgeMonitor(Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;)V

    .line 9
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->init()V

    return-void
.end method
