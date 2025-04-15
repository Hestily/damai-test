.class public Landroid/taobao/windvane/util/FullTraceUtils;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "FullTraceUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomProperty(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setCustomTag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static addCustomStage(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p2, p0, p1}, Landroid/taobao/windvane/util/FullTraceUtils;->addStageInternal(Ljava/lang/Long;Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"H5CustomStage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"time\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/taobao/opentracing/api/Span;->log(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    :cond_0
    return-void
.end method

.method public static addCustomStageAndFinish(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/taobao/opentracing/api/Span;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0, p1}, Lcom/taobao/analysis/v3/FalcoSpan;->finish(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addProperty(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static addStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static addStage(Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p2, p0, p1}, Landroid/taobao/windvane/util/FullTraceUtils;->addStageInternal(Ljava/lang/Long;Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"H5Stage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"time\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static addStage(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/taobao/windvane/util/FullTraceUtils;->addStage(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static addStage(Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p2, p0, p1}, Landroid/taobao/windvane/util/FullTraceUtils;->addStageInternal(Ljava/lang/Long;Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"H5Stage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"time\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/taobao/opentracing/api/Span;->log(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    :cond_0
    return-void
.end method

.method private static addStageInternal(Ljava/lang/Long;Landroid/taobao/windvane/fullspan/SpanWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/taobao/windvane/fullspan/SpanWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/fullspan/SpanWrapper;->customStage(Ljava/lang/String;)Lcom/taobao/analysis/v3/FalcoStage;

    move-result-object p1

    .line 6
    invoke-interface {p1, p0}, Lcom/taobao/analysis/v3/FalcoStage;->start(Ljava/lang/Long;)V

    .line 7
    invoke-interface {p1, p0}, Lcom/taobao/analysis/v3/FalcoStage;->finish(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static addStageInternal(Ljava/lang/Long;Lcom/taobao/analysis/v3/FalcoSpan;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/taobao/analysis/v3/FalcoSpan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/taobao/analysis/v3/FalcoSpan;->customStage(Ljava/lang/String;)Lcom/taobao/analysis/v3/FalcoStage;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, Lcom/taobao/analysis/v3/FalcoStage;->start(Ljava/lang/Long;)V

    .line 3
    invoke-interface {p1, p0}, Lcom/taobao/analysis/v3/FalcoStage;->finish(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)Lcom/taobao/analysis/v3/FalcoSpan;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/taobao/windvane/fullspan/SpanWrapper;->context()Lcom/taobao/opentracing/api/SpanContext;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/opentracing/api/SpanContext;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "falcoSpan=null "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FullTraceUtils"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/analysis/v3/FalcoSpan;)Lcom/taobao/analysis/v3/FalcoSpan;
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/taobao/opentracing/api/Span;->context()Lcom/taobao/opentracing/api/SpanContext;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/opentracing/api/SpanContext;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "falcoSpan=null "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FullTraceUtils"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/opentracing/api/SpanContext;)Lcom/taobao/analysis/v3/FalcoSpan;
    .locals 1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/taobao/analysis/v3/FalcoGlobalTracer;->get()Lcom/taobao/analysis/v3/FalcoTracer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p0, p1}, Lcom/taobao/analysis/v3/FalcoTracer;->buildSpan(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/analysis/v3/FalcoTracer$FalcoSpanBuilder;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p0, p2}, Lcom/taobao/opentracing/api/Tracer$SpanBuilder;->asChildOf(Lcom/taobao/opentracing/api/SpanContext;)Lcom/taobao/opentracing/api/Tracer$SpanBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "FullTraceUtils"

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "spanContext=null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-interface {p0}, Lcom/taobao/analysis/v3/FalcoTracer$FalcoSpanBuilder;->startContainerSpan()Lcom/taobao/analysis/v3/FalcoContainerSpan;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/analysis/v3/FalcoSpan;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/analysis/v3/FalcoSpan;"
        }
    .end annotation

    .line 11
    :try_start_0
    invoke-static {}, Lcom/taobao/analysis/v3/FalcoGlobalTracer;->get()Lcom/taobao/analysis/v3/FalcoTracer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0, p0, p1}, Lcom/taobao/analysis/v3/FalcoTracer;->buildSpan(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/analysis/v3/FalcoTracer$FalcoSpanBuilder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "FullTraceUtils"

    if-eqz p2, :cond_1

    .line 13
    :try_start_1
    invoke-interface {v0, p2}, Lcom/taobao/analysis/v3/FalcoTracer;->extractMapToContext(Ljava/util/Map;)Lcom/taobao/opentracing/api/SpanContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0, v0}, Lcom/taobao/opentracing/api/Tracer$SpanBuilder;->asChildOf(Lcom/taobao/opentracing/api/SpanContext;)Lcom/taobao/opentracing/api/Tracer$SpanBuilder;

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openTracingContextMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "openTracingContextMap==null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-interface {p0}, Lcom/taobao/analysis/v3/FalcoTracer$FalcoSpanBuilder;->startContainerSpan()Lcom/taobao/analysis/v3/FalcoContainerSpan;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
