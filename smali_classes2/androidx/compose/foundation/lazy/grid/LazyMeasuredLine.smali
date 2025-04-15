.class public final Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final crossAxisSpacing:I

.field private final index:I

.field private final isVertical:Z

.field private final items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainAxisSize:I

.field private final mainAxisSizeWithSpacings:I

.field private final mainAxisSpacing:I

.field private final slotsPerLine:I

.field private final spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;ZILandroidx/compose/ui/unit/LayoutDirection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;ZI",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 4
    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->spans:Ljava/util/List;

    .line 5
    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->isVertical:Z

    .line 6
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->slotsPerLine:I

    .line 7
    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 8
    iput p7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSpacing:I

    .line 9
    iput p8, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->crossAxisSpacing:I

    .line 10
    array-length p1, p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    aget-object p6, p2, p4

    .line 11
    invoke-virtual {p6}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->getMainAxisSize()I

    move-result p6

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSize:I

    .line 13
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSpacing:I

    add-int/2addr p5, p1

    invoke-static {p5, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSizeWithSpacings:I

    return-void
.end method

.method public synthetic constructor <init>(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;ZILandroidx/compose/ui/unit/LayoutDirection;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;-><init>(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;ZILandroidx/compose/ui/unit/LayoutDirection;II)V

    return-void
.end method


# virtual methods
.method public final getIndex-hA7yfN8()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    return v0
.end method

.method public final getItems()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    return-object v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSize:I

    return v0
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSizeWithSpacings:I

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final position(III)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v15, v1, v4

    add-int/lit8 v16, v5, 0x1

    .line 4
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->spans:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->unbox-impl()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->getCurrentLineSpan-impl(J)I

    move-result v5

    .line 5
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v7, v8, :cond_0

    .line 6
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->slotsPerLine:I

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    .line 7
    :goto_1
    iget-boolean v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->isVertical:Z

    if-eqz v8, :cond_1

    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    move v12, v9

    goto :goto_2

    :cond_1
    move v12, v7

    :goto_2
    if-eqz v8, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    :goto_3
    move v13, v7

    move-object v7, v15

    move/from16 v8, p1

    move v9, v14

    move/from16 v10, p2

    move/from16 v11, p3

    .line 9
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->position(IIIIII)Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    move-result-object v7

    .line 10
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v8

    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->crossAxisSpacing:I

    add-int/2addr v8, v9

    add-int/2addr v14, v8

    add-int/2addr v6, v5

    .line 11
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v16

    goto :goto_0

    :cond_3
    return-object v2
.end method
