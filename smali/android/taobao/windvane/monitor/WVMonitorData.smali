.class public Landroid/taobao/windvane/monitor/WVMonitorData;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/monitor/WVMonitorData$extra;,
        Landroid/taobao/windvane/monitor/WVMonitorData$resStat;,
        Landroid/taobao/windvane/monitor/WVMonitorData$stat;
    }
.end annotation


# instance fields
.field public args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

.field public init:J

.field public isInit:Z

.field public performanceInfo:Ljava/lang/String;

.field public protocolType:Ljava/lang/String;

.field public startTime:J

.field public stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

.field public url:Ljava/lang/String;

.field public wvAppMonitor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->isInit:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->init:J

    const-string v0, ""

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->wvAppMonitor:I

    .line 7
    new-instance v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/monitor/WVMonitorData$stat;-><init>(Landroid/taobao/windvane/monitor/WVMonitorData;)V

    iput-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    .line 8
    new-instance v1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/monitor/WVMonitorData$extra;-><init>(Landroid/taobao/windvane/monitor/WVMonitorData;)V

    iput-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    .line 9
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->protocolType:Ljava/lang/String;

    return-void
.end method

.method public static createNewResStatInstance()Landroid/taobao/windvane/monitor/WVMonitorData$resStat;
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    invoke-direct {v0}, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;-><init>()V

    return-object v0
.end method

.method public static toUtArray(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/taobao/windvane/monitor/WVMonitorData;->toUtMap(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)Ljava/util/Map;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toUtMap(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->dnsTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_dnsTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-short v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->isDNSTimeout:S

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_isDNSTimeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->oneWayTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_oneWayTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->tcpLinkDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_tcpLinkDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->waitTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_waitTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->postBodyTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_postBodyTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->firstDataTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_firstDataTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->serverRT:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_serverRT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->totalSize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_totalSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->recDataTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_recDataTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-boolean v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->isSSL:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_isSSL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->dataSpeed:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net_dataSpeed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget p0, p0, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;->spdy:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "net_spdy"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public toJsonStringDict()[Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->appSeq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageApp-Seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->appSeq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageApp-Version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageApp-Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 10
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object v2

    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    iget v2, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->resSample:I

    if-gt v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->resStat:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 13
    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->resStat:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    iget-wide v4, v4, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->end:J

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    iget-wide v6, v6, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->start:J

    sub-long/2addr v4, v6

    .line 15
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object v6

    iget-object v6, v6, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    iget-object v6, v6, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    iget-wide v6, v6, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->resTime:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    invoke-virtual {v4}, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->toUtMap()Ljava/util/Map;

    move-result-object v4

    .line 17
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "url"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 19
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 20
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public toJsonStringMap()Ljava/util/HashMap;
    .locals 10
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->url:Ljava/lang/String;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v3, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "loadTime"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->finish:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "isFinish"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v3, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->firstByteTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "firstByte"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v3, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "domLoad"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fromType"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v3, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->matchCost:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "matchCost"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "statusCode"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppVersion:Ljava/lang/String;

    const-string/jumbo v3, "packageappversion"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    const-string/jumbo v3, "packageAppName"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyCacheSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "verifyCacheSize"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->via:Ljava/lang/String;

    const-string/jumbo v3, "via"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyError:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "verifyError"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v3, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyResTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "verifyResTime"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v3, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "verifyTime"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v3, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->allVerifyTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "allVerifyTime"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    if-eqz v1, :cond_0

    .line 19
    invoke-static {v1}, Landroid/taobao/windvane/monitor/WVMonitorData;->toUtArray(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v3, "netStat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->resStat:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 22
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object v3

    iget-object v3, v3, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    iget-object v3, v3, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    iget v3, v3, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->resSample:I

    if-gt v1, v3, :cond_3

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v3, p0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v3, v3, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->resStat:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    iget-wide v5, v5, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->end:J

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    iget-wide v7, v7, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->start:J

    sub-long/2addr v5, v7

    .line 26
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object v7

    iget-object v7, v7, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    iget-object v7, v7, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    iget-wide v7, v7, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->resTime:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 27
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    invoke-virtual {v5}, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->toUtMap()Ljava/util/Map;

    move-result-object v5

    .line 28
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 29
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 30
    invoke-virtual {v6}, Landroid/net/Uri;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 31
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "resStat"

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
