.class public interface abstract Landroidx/compose/foundation/lazy/grid/MeasuredItemFactory;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract createItem-PU_OBEw(ILjava/lang/Object;IILjava/util/List;)Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;)",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
