.class public interface abstract Landroidx/compose/runtime/tooling/CompositionData;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCompositionGroups()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method
