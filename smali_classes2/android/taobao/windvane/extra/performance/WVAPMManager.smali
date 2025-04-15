.class public Landroid/taobao/windvane/extra/performance/WVAPMManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static index:I


# instance fields
.field private apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Ltb/g0;->a()Ltb/g0;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltb/g0;->createApmAdapterByType(Ljava/lang/String;)Lcom/taobao/monitor/performance/IWXApmAdapter;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public addBiz(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addBizAbTest(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addBizStage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/monitor/performance/IWXApmAdapter;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addStatistic(Ljava/lang/String;D)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/monitor/performance/IWXApmAdapter;->addStatistic(Ljava/lang/String;D)V

    return-void
.end method

.method public onEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onEnd()V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onStage(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onStage(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WV_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/taobao/windvane/extra/performance/WVAPMManager;->index:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/taobao/windvane/extra/performance/WVAPMManager;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onStop()V

    return-void
.end method
