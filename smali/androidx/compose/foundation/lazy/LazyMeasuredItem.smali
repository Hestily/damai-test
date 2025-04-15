.class public final Landroidx/compose/foundation/lazy/LazyMeasuredItem;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final crossAxisSize:I

.field private final horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final size:I

.field private final sizeWithSpacings:I

.field private final spacing:I

.field private final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final visualOffset:J


# direct methods
.method private constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;Z",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "ZII",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "IJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 5
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 6
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 7
    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 8
    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 9
    iput p8, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    .line 10
    iput p9, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    .line 11
    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 12
    iput p11, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->spacing:I

    .line 13
    iput-wide p12, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->visualOffset:J

    .line 14
    iput-object p14, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    :goto_0
    if-ge p4, p1, :cond_2

    .line 16
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    .line 17
    check-cast p7, Landroidx/compose/ui/layout/Placeable;

    .line 18
    iget-boolean p8, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-eqz p8, :cond_0

    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p8

    goto :goto_1

    :cond_0
    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p8

    :goto_1
    add-int/2addr p5, p8

    .line 19
    iget-boolean p8, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-nez p8, :cond_1

    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p7

    goto :goto_2

    :cond_1
    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p7

    :goto_2
    invoke-static {p6, p7}, Ljava/lang/Math;->max(II)I

    move-result p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 20
    :cond_2
    iput p5, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 21
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->spacing:I

    add-int/2addr p5, p1

    invoke-static {p5, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    .line 22
    iput p6, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->crossAxisSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    invoke-direct/range {p0 .. p14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;-><init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCrossAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    return v0
.end method

.method public final getSizeWithSpacings()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    return v0
.end method

.method public final position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_0

    move/from16 v14, p3

    goto :goto_0

    :cond_0
    move/from16 v14, p2

    .line 3
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:Ljava/util/List;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p1

    :goto_1
    if-ge v2, v3, :cond_5

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 7
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    const-string v7, "Required value was null."

    if-eqz v6, :cond_2

    .line 8
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 v10, p2

    invoke-interface {v6, v7, v10, v8}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v6

    .line 10
    invoke-static {v6, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    move/from16 v8, p3

    goto :goto_2

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move/from16 v10, p2

    .line 12
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    move/from16 v8, p3

    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v6

    .line 13
    invoke-static {v4, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 14
    :goto_2
    iget-boolean v11, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v11

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v11

    :goto_3
    add-int/2addr v4, v11

    .line 15
    new-instance v11, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v7, v5, v12}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_5
    new-instance v16, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 18
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    .line 19
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 20
    iget v5, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 21
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    neg-int v6, v1

    .line 22
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    add-int v7, v14, v1

    .line 23
    iget-boolean v8, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 24
    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 25
    iget-wide v11, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->visualOffset:J

    .line 26
    iget-boolean v13, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    const/4 v15, 0x0

    move-object/from16 v1, v16

    move/from16 v2, p1

    .line 27
    invoke-direct/range {v1 .. v15}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;-><init>(IILjava/lang/Object;IIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v16
.end method
