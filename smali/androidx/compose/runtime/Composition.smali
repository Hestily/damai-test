.class public interface abstract Landroidx/compose/runtime/Composition;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getHasInvalidations()Z
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract setContent(Lkotlin/jvm/functions/Function2;)V
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
