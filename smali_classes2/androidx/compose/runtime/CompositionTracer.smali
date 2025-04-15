.class public interface abstract Landroidx/compose/runtime/CompositionTracer;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/InternalComposeTracingApi;
.end annotation


# virtual methods
.method public abstract isTraceInProgress()Z
.end method

.method public abstract traceEventEnd()V
.end method

.method public abstract traceEventStart(IIILjava/lang/String;)V
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
