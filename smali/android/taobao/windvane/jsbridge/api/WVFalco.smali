.class public Landroid/taobao/windvane/jsbridge/api/WVFalco;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"


# static fields
.field private static final FAIL_REASON:Ljava/lang/String; = "fail_reason"

.field private static final LEVEL_PHASE:I = 0x1

.field private static final LEVEL_STAGE:I = 0x2

.field private static final MONITOR_MODULE:Ljava/lang/String; = "WindVane"

.field private static final MONITOR_POINT:Ljava/lang/String; = "WVFalco"

.field private static final TAG:Ljava/lang/String; = "WVFalco"


# instance fields
.field private pageName:Ljava/lang/String;

.field private phaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/fullspan/SpanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private propertyLimit:I

.field private stageLimit:I

.field private stageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/fullspan/SpanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Landroid/taobao/windvane/extra/performance2/IPerformance;

.field webviewSpanFinished:Z

.field private webviewSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

.field private windvaneSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanFinished:Z

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->stageLimit:I

    .line 4
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->propertyLimit:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->phaseMap:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->stageMap:Ljava/util/Map;

    const-string v0, "h5_page"

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->pageName:Ljava/lang/String;

    return-void
.end method

.method private findSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lorg/json/JSONObject;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFalcoSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->windvaneSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFalcoSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    const-string v0, "WVFalco"

    const-string/jumbo v1, "pageName not set,use windvane span to findSpan"

    .line 4
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webView:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getCachedUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "unknown"

    :goto_0
    const-string v2, "WindVane"

    const-string v3, "2"

    const-string v4, "findSpan"

    .line 7
    invoke-static {v2, v0, v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v0, "phaseID"

    .line 8
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "fail_reason"

    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->phaseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-nez v0, :cond_2

    const-string/jumbo p1, "no such phase"

    .line 11
    invoke-virtual {p2, v3, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 12
    :cond_2
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFalcoSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    :cond_3
    const-string/jumbo v0, "stageID"

    .line 13
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->stageMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-nez p3, :cond_4

    const-string/jumbo p1, "no such stage"

    .line 16
    invoke-virtual {p2, v3, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 17
    :cond_4
    invoke-virtual {p1, p3}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFalcoSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private finishSpan(Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)V
    .locals 1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/taobao/windvane/fullspan/SpanWrapper;->finish()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFailStatus()V

    .line 16
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->finish(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private finishSpan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;I)V
    .locals 3

    const-string v0, "fail_reason"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errorCode"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    const-string/jumbo p3, "phaseID"

    .line 3
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->phaseMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-nez p3, :cond_0

    const-string/jumbo p1, "phase doesn\'t exist"

    .line 5
    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->finishSpan(Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p3, "stageID"

    .line 7
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->stageMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-nez p3, :cond_2

    const-string/jumbo p1, "stage doesn\'t exist"

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->finishSpan(Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    .line 11
    :goto_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private startSpan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;I)V
    .locals 11

    const-string v0, "WVFalco"

    const-string v1, "fail_reason"

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "fail to make new span"

    const-string/jumbo v3, "phaseID"

    const/4 v4, 0x1

    if-ne p3, v4, :cond_3

    :try_start_1
    const-string/jumbo v5, "phaseName"

    .line 2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-eqz v6, :cond_0

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->pageName:Ljava/lang/String;

    invoke-static {v0, v0, v6}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->pageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->windvaneSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-static {v6, v6, v7}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v6

    const-string/jumbo v7, "pageName not set,use windvane span to make Span"

    .line 6
    invoke-static {v0, v7}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "unknown"

    .line 7
    iget-object v8, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webView:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v8, :cond_1

    .line 8
    invoke-interface {v8}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getCachedUrl()Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string v8, "WindVane"

    const-string v9, "1"

    const-string v10, "makeSpan"

    .line 9
    invoke-static {v8, v0, v7, v9, v10}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-interface {v0, v5}, Lcom/taobao/opentracing/api/Span;->setOperationName(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    .line 12
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->context()Lcom/taobao/opentracing/api/SpanContext;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/taobao/opentracing/api/SpanContext;->toSpanId()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->phaseMap:Ljava/util/Map;

    new-instance v6, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v6, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>(Lcom/taobao/analysis/v3/FalcoSpan;)V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "stageName"

    .line 16
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->phaseMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-nez v0, :cond_4

    const-string/jumbo p1, "phase doesn\'t exist"

    .line 18
    invoke-virtual {p2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->pageName:Ljava/lang/String;

    invoke-static {v6, v6, v0}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v0

    if-nez v0, :cond_5

    .line 20
    invoke-virtual {p2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5
    invoke-interface {v0, v5}, Lcom/taobao/opentracing/api/Span;->setOperationName(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    .line 22
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->context()Lcom/taobao/opentracing/api/SpanContext;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/taobao/opentracing/api/SpanContext;->toSpanId()Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->stageMap:Ljava/util/Map;

    new-instance v6, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v6, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>(Lcom/taobao/analysis/v3/FalcoSpan;)V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string/jumbo v5, "property"

    .line 25
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 27
    :goto_2
    iget v6, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->propertyLimit:I

    if-lez v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 28
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-interface {v0, v6, v7}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    .line 31
    iget v6, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->propertyLimit:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->propertyLimit:I

    goto :goto_2

    .line 32
    :cond_6
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    if-ne p3, v4, :cond_7

    .line 33
    invoke-virtual {v0, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string/jumbo p3, "stageID"

    .line 34
    invoke-virtual {v0, p3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_3
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final addLog(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6

    const-string v0, "fail_reason"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "log"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "There is no log"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v2, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v2}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    .line 5
    invoke-direct {p0, v2, p2, v1}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->findSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/fullspan/SpanWrapper;->releaseLog(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final addProperty(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5

    const-string v0, "fail_reason"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "property"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "There is no property"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v2, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v2}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    .line 5
    invoke-direct {p0, v2, p2, v1}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->findSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    :goto_0
    iget v3, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->propertyLimit:I

    if-lez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setCustomTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v3, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->propertyLimit:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->propertyLimit:I

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute() called with: action = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], params = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], callback = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVFalco"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "addLog"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->addLog(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_0
    const-string v0, "addProperties"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->addProperty(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_1
    const-string/jumbo v0, "startPhase"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p2, p3, v1}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->startSpan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;I)V

    return v1

    :cond_2
    const-string v0, "finishPhase"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0, p2, p3, v1}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->finishSpan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;I)V

    return v1

    :cond_3
    const-string/jumbo v0, "startStage"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 11
    invoke-direct {p0, p2, p3, v2}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->startSpan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;I)V

    return v1

    :cond_4
    const-string v0, "finishStage"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-direct {p0, p2, p3, v2}, Landroid/taobao/windvane/jsbridge/api/WVFalco;->finishSpan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;I)V

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableWVFullTrace:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of p1, p2, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz p1, :cond_1

    .line 4
    move-object p1, p2

    check-cast p1, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->windvaneSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    .line 5
    :cond_1
    instance-of p1, p2, Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz p1, :cond_2

    .line 6
    check-cast p2, Landroid/taobao/windvane/extra/performance2/IPerformance;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webView:Landroid/taobao/windvane/extra/performance2/IPerformance;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->finish()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanFinished:Z

    :cond_0
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableWVFullTrace:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h5_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->pageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->finish()V

    .line 6
    :cond_1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->pageName:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVFalco"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->windvaneSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-static {p1, p1, v0}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object p1

    .line 9
    new-instance v0, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v0, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>(Lcom/taobao/analysis/v3/FalcoSpan;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVFalco;->webviewSpanFinished:Z

    :cond_2
    return-void
.end method
