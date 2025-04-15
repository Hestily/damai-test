.class public Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# static fields
.field public static final APP_STATUS:I = 0x1

.field public static final LOADURL_STATUS:I = 0x3

.field private static TAG:Ljava/lang/String; = "WVLocPerformanceMonitor"

.field public static final WEBVIEW_STATUS:I = 0x2

.field private static instance:Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;

.field private static isOpenLocPerformanceMonitor:Z


# instance fields
.field public cpu_app:F

.field public cpu_loadurl:F

.field public cpu_webview:F

.field private isInit:Z

.field public mem_app:F

.field public mem_loadurl:F

.field public mem_webview:F

.field private monitorData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private time_load:J

.field private time_load_start:J

.field private time_webview:J

.field private time_webview_start:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_app:F

    .line 3
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_app:F

    .line 4
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_webview:F

    .line 5
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_webview:F

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_webview_start:J

    .line 7
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_webview:J

    .line 8
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_loadurl:F

    .line 9
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_loadurl:F

    .line 10
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_load_start:J

    .line 11
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_load:J

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->isInit:Z

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->instance:Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;

    invoke-direct {v1}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;-><init>()V

    sput-object v1, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->instance:Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->instance:Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;

    return-object v0
.end method

.method public static isOpenLocPerformanceMonitor()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->isOpenLocPerformanceMonitor:Z

    return v0
.end method

.method public static setOpenLocPerformanceMonitor(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->isOpenLocPerformanceMonitor:Z

    return-void
.end method


# virtual methods
.method public getMonitorData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->monitorData:Ljava/util/HashMap;

    return-object v0
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 4

    const/16 p3, 0xbc1

    if-ne p3, p1, :cond_0

    .line 1
    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->setCpuAndMemery(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0xbc0

    if-ne p3, p1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_webview_start:J

    goto :goto_0

    :cond_1
    const/16 p3, 0xbc2

    if-ne p3, p1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_load_start:J

    .line 4
    iget-wide v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_webview_start:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_webview:J

    .line 5
    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->setCpuAndMemery(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x3e9

    if-ne p3, p1, :cond_3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_load_start:J

    goto :goto_0

    :cond_3
    const/16 p3, 0x3ea

    if-ne p3, p1, :cond_4

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_load_start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_load:J

    .line 8
    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p3}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->setCpuAndMemery(Landroid/content/Context;I)V

    .line 9
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    sget-object p1, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_app:F

    .line 2
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_app:F

    .line 3
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_webview:F

    .line 4
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_webview:F

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_webview:J

    .line 6
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_loadurl:F

    .line 7
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_loadurl:F

    .line 8
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->time_load:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->isInit:Z

    return-void
.end method

.method public setCpuAndMemery(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->isOpenLocPerformanceMonitor()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "\u975edebug\u72b6\u6001\uff0c\u4e0d\u5f00\u542f\u6027\u80fd\u6570\u636e\u91c7\u96c6\u6a21\u5f0f"

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_loadurl:F

    .line 4
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_loadurl:F

    goto :goto_0

    .line 5
    :cond_2
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_webview:F

    .line 6
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_webview:F

    goto :goto_0

    .line 7
    :cond_3
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->cpu_app:F

    .line 8
    iput v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->mem_app:F

    .line 9
    :goto_0
    iput-boolean p1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->isInit:Z

    return-void
.end method

.method public setMonitorData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->monitorData:Ljava/util/HashMap;

    .line 2
    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->setCpuAndMemery(Landroid/content/Context;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->isInit:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->getInstance()Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    sget-object v1, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6027\u80fd\u6570\u636e\u91c7\u96c6\u5931\u8d25\uff0cjson\u89e3\u6790\u5f02\u5e38 json \u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroid/taobao/windvane/monitor/WVLocPerformanceMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u6027\u80fd\u6570\u636e\u672a\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
