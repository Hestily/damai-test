.class public Landroid/taobao/windvane/fullspan/SpanWrapper;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/analysis/v3/FalcoSpan;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    return-void
.end method


# virtual methods
.method public context()Lcom/taobao/opentracing/api/SpanContext;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->context()Lcom/taobao/opentracing/api/SpanContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public customStage(Ljava/lang/String;)Lcom/taobao/analysis/v3/FalcoStage;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/analysis/v3/FalcoSpan;->customStage(Ljava/lang/String;)Lcom/taobao/analysis/v3/FalcoStage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/taobao/opentracing/api/Span;->finish()V

    :cond_0
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/taobao/analysis/v3/FalcoSpan;->finish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/opentracing/api/Span;->log(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    :cond_0
    return-void
.end method

.method public releaseLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/analysis/v3/FalcoSpan;->releaseLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCustomTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"H5CustomProperty\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"value\":\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taobao/opentracing/api/Span;->log(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    :cond_0
    return-void
.end method

.method public setFailStatus()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/taobao/analysis/v3/FalcoSpan;->ERROR_CODE:Ltb/l75;

    const-string v2, "failed"

    invoke-virtual {v1, v0, v2}, Ltb/l75;->a(Lcom/taobao/opentracing/api/Span;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFalcoSpan(Landroid/taobao/windvane/fullspan/SpanWrapper;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    iput-object p1, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    :cond_0
    return-void
.end method

.method public setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Ljava/lang/Number;)Lcom/taobao/opentracing/api/Span;

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"H5Property\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"value\":\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taobao/opentracing/api/Span;->log(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"H5Property\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"value\":\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taobao/opentracing/api/Span;->log(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;Z)V
    .locals 3

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/taobao/opentracing/api/Span;->setTag(Ljava/lang/String;Z)Lcom/taobao/opentracing/api/Span;

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/fullspan/SpanWrapper;->falcoSpan:Lcom/taobao/analysis/v3/FalcoSpan;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"H5Property\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"value\":\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taobao/opentracing/api/Span;->log(Ljava/lang/String;)Lcom/taobao/opentracing/api/Span;

    :cond_0
    return-void
.end method
