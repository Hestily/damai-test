.class public interface abstract Landroidx/compose/foundation/lazy/grid/GridCells;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;,
        Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;
    }
.end annotation


# virtual methods
.method public abstract calculateCrossAxisCellSizes(Landroidx/compose/ui/unit/Density;II)Ljava/util/List;
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
