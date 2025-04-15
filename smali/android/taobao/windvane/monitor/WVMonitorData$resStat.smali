.class public Landroid/taobao/windvane/monitor/WVMonitorData$resStat;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVMonitorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "resStat"
.end annotation


# instance fields
.field public end:J

.field public fromType:I

.field public netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

.field public protocolType:Ljava/lang/String;

.field public start:J

.field public statusCode:I

.field public tcpTime:J

.field public verifyError:I

.field public verifyResTime:J

.field public verifyTime:J

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyError:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyResTime:J

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyTime:J

    .line 5
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->tcpTime:J

    const-string v0, ""

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->protocolType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toUtMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitorData;->toUtMap(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)Ljava/util/Map;

    move-result-object v0

    .line 4
    :goto_0
    iget v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->statusCode:I

    if-lez v1, :cond_1

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statusCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->via:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "via"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->start:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 9
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->end:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 11
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    iget v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->fromType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->protocolType:Ljava/lang/String;

    const-string/jumbo v2, "protocolType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->tcpTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tcpTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyError:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "verifyError"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyResTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "verifyResTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "verifyTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
