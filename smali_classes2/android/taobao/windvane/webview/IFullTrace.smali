.class public interface abstract Landroid/taobao/windvane/webview/IFullTrace;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract getFalcoSpan()Lcom/taobao/analysis/v3/FalcoSpan;
.end method

.method public abstract getOpenTracingContext()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;
.end method

.method public abstract setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V
.end method

.method public abstract setOpenTracingContext(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
