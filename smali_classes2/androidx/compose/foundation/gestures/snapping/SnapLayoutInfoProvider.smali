.class public interface abstract Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation


# virtual methods
.method public abstract calculateApproachOffset(Landroidx/compose/ui/unit/Density;F)F
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract calculateSnapStepSize(Landroidx/compose/ui/unit/Density;)F
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract calculateSnappingOffsetBounds(Landroidx/compose/ui/unit/Density;)Lkotlin/ranges/ClosedFloatingPointRange;
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
