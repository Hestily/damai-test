.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method private static final calculateItemsOffsets(Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p7

    move/from16 v4, p9

    move/from16 v5, p4

    if-eqz p6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 1
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v9, p3

    if-ge v9, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v9, v7, :cond_5

    .line 4
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 5
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 6
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    move-result-object v11

    array-length v11, v11

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_f

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 8
    new-array v9, v5, [I

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v5, :cond_6

    .line 9
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSize()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 10
    :cond_6
    new-array v10, v5, [I

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_7

    aput v8, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    const-string v8, "Required value was null."

    if-eqz p6, :cond_9

    if-eqz v3, :cond_8

    move-object/from16 v11, p10

    .line 11
    invoke-interface {v3, v11, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_7

    .line 12
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v11, p10

    if-eqz p8, :cond_e

    .line 13
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p3, p8

    move-object/from16 p4, p10

    move/from16 p5, v6

    move-object/from16 p6, v9

    move-object/from16 p7, v3

    move-object/from16 p8, v10

    invoke-interface/range {p3 .. p8}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 14
    :goto_7
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    if-eqz v4, :cond_a

    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 15
    :cond_a
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v8

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_b

    if-le v8, v9, :cond_c

    :cond_b
    if-gez v3, :cond_10

    if-gt v9, v8, :cond_10

    .line 16
    :cond_c
    :goto_8
    aget v11, v10, v8

    .line 17
    invoke-static {v8, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    if-eqz v4, :cond_d

    sub-int v11, v6, v11

    .line 18
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSize()I

    move-result v13

    sub-int/2addr v11, v13

    .line 19
    :cond_d
    invoke-virtual {v12, v11, p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->position(III)Ljava/util/List;

    move-result-object v11

    .line 20
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v8, v9, :cond_10

    add-int/2addr v8, v3

    goto :goto_8

    .line 21
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p5

    :goto_9
    if-ge v8, v3, :cond_10

    .line 23
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 24
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 25
    invoke-virtual {v5, v4, p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->position(III)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    return-object v7
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method public static final measureLazyGrid-0cYbdkg(ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 24
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p10

    move-object/from16 v5, p19

    const-string v6, "measuredLineProvider"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "measuredItemProvider"

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "density"

    move-object/from16 v8, p16

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "placementAnimator"

    move-object/from16 v15, p17

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "spanLayoutProvider"

    move-object/from16 v14, p18

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "layout"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    if-ltz v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const-string v11, "Failed requirement."

    if-eqz v10, :cond_1d

    if-ltz p5, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_1c

    if-gtz v9, :cond_3

    .line 1
    new-instance v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;

    invoke-interface {v5, v0, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    neg-int v11, v2

    add-int v12, v1, p5

    const/4 v14, 0x0

    if-eqz p12, :cond_2

    .line 4
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object v15, v0

    move-object v0, v13

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v6, v10

    move v7, v11

    move v8, v12

    move v9, v14

    move/from16 v10, p15

    move-object v11, v15

    move/from16 v12, p5

    .line 5
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    .line 6
    :cond_3
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v10

    sub-int v12, p8, v10

    .line 7
    invoke-static {v13}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v6

    move/from16 v13, p7

    invoke-static {v13, v6}, Landroidx/compose/foundation/lazy/grid/LineIndex;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_4

    if-gez v12, :cond_4

    add-int/2addr v10, v12

    const/4 v12, 0x0

    .line 8
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    neg-int v7, v2

    if-gez p6, :cond_5

    move/from16 v17, p6

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    :goto_3
    add-int v8, v7, v17

    add-int/2addr v12, v8

    :goto_4
    if-gez v12, :cond_6

    const/16 p7, 0x0

    .line 9
    invoke-static/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v16

    sub-int v16, v13, v16

    if-lez v16, :cond_6

    add-int/lit8 v13, v13, -0x1

    .line 10
    invoke-static {v13}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v13

    .line 11
    invoke-virtual {v0, v13}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->getAndMeasure-bKFJvoY(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v14

    move/from16 p8, v13

    const/4 v13, 0x0

    .line 12
    invoke-interface {v6, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v13, p8

    move-object/from16 v14, p18

    goto :goto_4

    :cond_6
    if-ge v12, v8, :cond_7

    add-int/2addr v10, v12

    move v12, v8

    :cond_7
    sub-int/2addr v12, v8

    add-int v14, v1, p5

    move/from16 p7, v13

    const/4 v13, 0x0

    .line 14
    invoke-static {v14, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v15

    neg-int v13, v12

    move/from16 p8, v12

    .line 15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v18, p7

    move/from16 v17, v13

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_8

    .line 16
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 17
    check-cast v19, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    add-int/lit8 v18, v18, 0x1

    .line 18
    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v18

    .line 19
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v19

    add-int v17, v17, v19

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    move/from16 v12, p8

    move/from16 p8, v14

    move/from16 v13, v17

    move/from16 v14, v18

    :goto_6
    if-ge v14, v9, :cond_d

    if-lt v13, v15, :cond_9

    if-lez v13, :cond_9

    .line 20
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_9
    move/from16 v17, v15

    .line 21
    invoke-virtual {v0, v14}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->getAndMeasure-bKFJvoY(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v15

    .line 22
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_a

    add-int/lit8 v14, v14, -0x1

    .line 23
    invoke-static {v14}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v14

    goto :goto_8

    .line 24
    :cond_a
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v18

    add-int v13, v13, v18

    if-gt v13, v8, :cond_b

    .line 25
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->getIndex-VZbfaAc()I

    move-result v8

    move/from16 v18, v13

    add-int/lit8 v13, v9, -0x1

    if-eq v8, v13, :cond_c

    add-int/lit8 v8, v14, 0x1

    .line 26
    invoke-static {v8}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v8

    .line 27
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v13

    sub-int/2addr v12, v13

    goto :goto_7

    :cond_b
    move/from16 v19, v8

    move/from16 v18, v13

    .line 28
    :cond_c
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v8, p7

    :goto_7
    add-int/lit8 v14, v14, 0x1

    .line 29
    invoke-static {v14}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v14

    move/from16 p7, v8

    move/from16 v15, v17

    move/from16 v13, v18

    move/from16 v8, v19

    goto :goto_6

    :cond_d
    :goto_8
    move v8, v14

    if-ge v13, v1, :cond_f

    sub-int v14, v1, v13

    sub-int/2addr v12, v14

    add-int/2addr v13, v14

    move/from16 v15, p7

    :goto_9
    if-ge v12, v2, :cond_e

    const/16 p7, 0x0

    .line 30
    invoke-static/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v16

    sub-int v16, v15, v16

    if-lez v16, :cond_e

    add-int/lit8 v15, v15, -0x1

    .line 31
    invoke-static {v15}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v15

    move-object/from16 v16, v11

    .line 32
    invoke-virtual {v0, v15}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->getAndMeasure-bKFJvoY(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v11

    const/4 v0, 0x0

    .line 33
    invoke-interface {v6, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v11

    add-int/2addr v12, v11

    move-object/from16 v0, p1

    move-object/from16 v11, v16

    goto :goto_9

    :cond_e
    move-object/from16 v16, v11

    const/4 v0, 0x0

    add-int/2addr v10, v14

    if-gez v12, :cond_10

    add-int/2addr v10, v12

    add-int/2addr v13, v12

    move v15, v13

    const/4 v12, 0x0

    goto :goto_a

    :cond_f
    move-object/from16 v16, v11

    const/4 v0, 0x0

    :cond_10
    move v15, v13

    .line 35
    :goto_a
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    invoke-static {v11}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v11

    invoke-static {v10}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v13

    if-ne v11, v13, :cond_11

    .line 36
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lt v11, v13, :cond_11

    int-to-float v10, v10

    move v14, v10

    goto :goto_b

    :cond_11
    move/from16 v14, p9

    :goto_b
    if-ltz v12, :cond_12

    const/4 v10, 0x1

    goto :goto_c

    :cond_12
    const/4 v10, 0x0

    :goto_c
    if-eqz v10, :cond_1b

    neg-int v13, v12

    .line 37
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    if-gtz v2, :cond_14

    if-gez p6, :cond_13

    goto :goto_e

    :cond_13
    move-object v2, v10

    :goto_d
    move/from16 v22, v12

    goto :goto_10

    .line 38
    :cond_14
    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    move-object v11, v10

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v2, :cond_15

    .line 39
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v0

    if-eqz v12, :cond_15

    if-gt v0, v12, :cond_15

    move/from16 p1, v2

    .line 40
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-eq v10, v2, :cond_15

    sub-int/2addr v12, v0

    add-int/lit8 v10, v10, 0x1

    .line 41
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move/from16 v2, p1

    const/4 v0, 0x0

    goto :goto_f

    :cond_15
    move-object v2, v11

    goto :goto_d

    :goto_10
    if-eqz p12, :cond_16

    .line 42
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    goto :goto_11

    .line 43
    :cond_16
    invoke-static {v3, v4, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    :goto_11
    if-eqz p12, :cond_17

    .line 44
    invoke-static {v3, v4, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v3

    goto :goto_12

    .line 45
    :cond_17
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    :goto_12
    move-object v10, v6

    move v11, v0

    move v12, v3

    move v4, v13

    const/4 v6, 0x0

    move v13, v15

    move/from16 v23, p8

    move v6, v14

    move/from16 v14, p3

    move/from16 p8, v7

    move v7, v15

    move v15, v4

    move/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move/from16 v19, p15

    move-object/from16 v20, p16

    .line 46
    invoke-static/range {v10 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets(Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v4

    float-to-int v11, v6

    move-object/from16 v10, p17

    move v12, v0

    move v13, v3

    move-object v14, v4

    move-object/from16 v15, p2

    move-object/from16 v16, p18

    .line 47
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    if-lt v8, v9, :cond_19

    if-le v7, v1, :cond_18

    goto :goto_13

    :cond_18
    const/16 v21, 0x0

    goto :goto_14

    :cond_19
    :goto_13
    const/16 v21, 0x1

    .line 48
    :goto_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;

    invoke-direct {v3, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v0, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz p12, :cond_1a

    .line 49
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_15

    :cond_1a
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_15
    move-object v11, v0

    .line 50
    new-instance v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object v0, v13

    move-object v1, v2

    move/from16 v2, v22

    move/from16 v3, v21

    move-object v7, v4

    move v4, v6

    move-object v6, v7

    move/from16 v7, p8

    move/from16 v8, v23

    move/from16 v9, p0

    move/from16 v10, p15

    move/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    .line 51
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object/from16 v16, v11

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object/from16 v16, v11

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
