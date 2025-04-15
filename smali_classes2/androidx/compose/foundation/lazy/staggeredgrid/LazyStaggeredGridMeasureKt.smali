.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method private static final ensureIndicesInRange(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 2
    :goto_1
    aget v3, p1, v0

    if-lt v3, p2, :cond_0

    .line 3
    aget v3, p1, v0

    invoke-static {p0, v3, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findPreviousItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v3

    aput v3, p1, v0

    goto :goto_1

    .line 4
    :cond_0
    aget v3, p1, v0

    if-eq v3, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->setSpan(II)V

    :cond_1
    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private static final findNextItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->findNextItemIndex(II)I

    move-result p0

    return p0
.end method

.method private static final findPreviousItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->findPreviousItemIndex(II)I

    move-result p0

    return p0
.end method

.method private static final indexOfMaxValue([I)I
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2
    aget v4, p0, v3

    if-ge v2, v4, :cond_0

    .line 3
    aget v1, p0, v3

    move v2, v1

    move v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static final indexOfMinBy([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, -0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2
    aget-object v4, p0, v3

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v2, v4, :cond_0

    move v1, v3

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final indexOfMinValue([I)I
    .locals 5
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p0

    const/4 v1, -0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2
    aget v4, p0, v3

    if-le v2, v4, :cond_0

    .line 3
    aget v1, p0, v3

    move v2, v1

    move v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static final measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    .locals 31
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMeasureScope()Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-result-object v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getItemProvider()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v14

    if-lez v14, :cond_46

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getResolvedSlotSums()[I

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto/16 :goto_3c

    .line 4
    :cond_1
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    const-string v5, "copyOf(this, size)"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v9, v3

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v8, v14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->ensureIndicesInRange(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)V

    neg-int v10, v1

    .line 7
    invoke-static {v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getResolvedSlotSums()[I

    move-result-object v10

    array-length v10, v10

    new-array v11, v10, [Lkotlin/collections/ArrayDeque;

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_2

    .line 9
    new-instance v13, Lkotlin/collections/ArrayDeque;

    invoke-direct {v13}, Lkotlin/collections/ArrayDeque;-><init>()V

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v12

    neg-int v12, v12

    invoke-static {v9, v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    .line 11
    :goto_2
    invoke-static {v8, v9, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->measure$lambda$18$hasSpaceBeforeFirst([I[ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;)Z

    move-result v12

    const/4 v13, -0x1

    if-eqz v12, :cond_5

    .line 12
    invoke-static {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->indexOfMinValue([I)I

    move-result v12

    .line 13
    aget v15, v8, v12

    .line 14
    invoke-static {v0, v15, v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findPreviousItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v15

    if-gez v15, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->getSpan(I)I

    move-result v6

    if-ne v6, v13, :cond_4

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v6

    invoke-virtual {v6, v15, v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->setSpan(II)V

    .line 17
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMeasuredItemProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

    move-result-object v6

    invoke-virtual {v6, v15, v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getAndMeasure(II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v6

    .line 18
    aget-object v13, v11, v12

    invoke-virtual {v13, v6}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 19
    aput v15, v8, v12

    .line 20
    aget v13, v9, v12

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    add-int/2addr v13, v6

    aput v13, v9, v12

    goto :goto_2

    :cond_5
    const/4 v12, -0x1

    .line 21
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v6

    neg-int v15, v6

    .line 22
    aget v6, v9, v7

    if-ge v6, v15, :cond_6

    .line 23
    aget v6, v9, v7

    add-int/2addr v6, v1

    .line 24
    aget v17, v9, v7

    sub-int v7, v15, v17

    invoke-static {v9, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    goto :goto_4

    :cond_6
    move v6, v1

    .line 25
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v7

    invoke-static {v9, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    if-ne v12, v13, :cond_7

    const/4 v7, 0x0

    .line 26
    invoke-static {v8, v7}, Lkotlin/collections/ArraysKt;->indexOf([II)I

    move-result v12

    :cond_7
    if-eq v12, v13, :cond_a

    .line 27
    invoke-static {v8, v0, v9, v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->measure$lambda$18$misalignedStart([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz p4, :cond_a

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->reset()V

    .line 29
    array-length v1, v8

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_8

    aput v13, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 30
    :cond_8
    array-length v1, v9

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_9

    .line 31
    aget v5, v9, v12

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 32
    invoke-static {v0, v6, v2, v3, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    return-object v0

    .line 33
    :cond_a
    array-length v7, v2

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v0, v7, v14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->ensureIndicesInRange(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)V

    .line 35
    array-length v12, v3

    new-array v13, v12, [I

    move-object/from16 v19, v4

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v12, :cond_b

    .line 36
    aget v20, v3, v4

    move-object/from16 v21, v5

    sub-int v5, v20, v6

    neg-int v5, v5

    aput v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v21

    goto :goto_7

    :cond_b
    move-object/from16 v21, v5

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisAvailableSize()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getAfterContentPadding()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 38
    array-length v5, v7

    move/from16 v20, v6

    move-object/from16 v23, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v6, v5, :cond_d

    move/from16 v22, v5

    aget v5, v7, v6

    add-int/lit8 v24, v8, 0x1

    move-object/from16 v25, v9

    if-ltz v5, :cond_c

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMeasuredItemProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

    move-result-object v9

    invoke-virtual {v9, v5, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getAndMeasure(II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v9

    .line 40
    aget v26, v13, v8

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v27

    add-int v26, v26, v27

    aput v26, v13, v8

    move/from16 v26, v15

    .line 41
    aget-object v15, v11, v8

    invoke-virtual {v15, v9}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v9

    invoke-virtual {v9, v5, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->setSpan(II)V

    goto :goto_9

    :cond_c
    move/from16 v26, v15

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v22

    move/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v15, v26

    goto :goto_8

    :cond_d
    move-object/from16 v25, v9

    move/from16 v26, v15

    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-ge v5, v12, :cond_11

    .line 43
    aget v6, v13, v5

    if-lt v6, v4, :cond_f

    if-gtz v6, :cond_e

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v6, 0x1

    :goto_d
    if-eqz v6, :cond_10

    const/4 v5, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_15

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v10, :cond_13

    .line 44
    aget-object v8, v11, v5

    .line 45
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    const/4 v5, 0x0

    goto :goto_10

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_13
    const/4 v5, 0x1

    :goto_10
    if-eqz v5, :cond_14

    goto :goto_11

    :cond_14
    move/from16 v24, v4

    const v4, 0x7fffffff

    goto :goto_14

    .line 46
    :cond_15
    :goto_11
    invoke-static {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->indexOfMinValue([I)I

    move-result v5

    .line 47
    aget v8, v7, v5

    invoke-static {v0, v8, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findNextItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v8

    if-lt v8, v14, :cond_44

    .line 48
    array-length v8, v7

    const v6, 0x7fffffff

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_12
    if-ge v9, v8, :cond_17

    move/from16 v24, v4

    aget v4, v7, v9

    add-int/lit8 v27, v15, 0x1

    if-eq v15, v5, :cond_16

    .line 49
    invoke-static {v0, v4, v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findNextItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v4

    :goto_13
    if-ge v4, v14, :cond_16

    .line 50
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v28, v6

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v6

    move/from16 v29, v8

    const/4 v8, -0x1

    invoke-virtual {v6, v4, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->setSpan(II)V

    .line 52
    invoke-static {v0, v4, v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findNextItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v4

    move/from16 v6, v28

    move/from16 v8, v29

    goto :goto_13

    :cond_16
    move/from16 v29, v8

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v24

    move/from16 v15, v27

    move/from16 v8, v29

    goto :goto_12

    :cond_17
    move/from16 v24, v4

    const v4, 0x7fffffff

    if-eq v6, v4, :cond_18

    if-eqz p4, :cond_18

    .line 53
    aget v4, v2, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v2, v5

    const/4 v4, 0x0

    .line 54
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_14
    const/4 v1, 0x0

    :goto_15
    if-ge v1, v10, :cond_1d

    .line 55
    aget-object v2, v11, v1

    .line 56
    aget v3, v13, v1

    .line 57
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, -0x1

    :goto_16
    if-ge v8, v5, :cond_1a

    .line 58
    invoke-virtual {v2, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 59
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    sub-int/2addr v3, v6

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisSpacing()I

    move-result v6

    add-int v15, v26, v6

    if-gt v3, v15, :cond_19

    goto :goto_17

    :cond_19
    add-int/lit8 v6, v5, -0x1

    const/4 v8, -0x1

    move/from16 v30, v6

    move v6, v5

    move/from16 v5, v30

    goto :goto_16

    :cond_1a
    move v5, v6

    :goto_17
    const/4 v3, 0x0

    :goto_18
    if-ge v3, v5, :cond_1b

    .line 61
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 62
    aget v8, v25, v1

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    sub-int/2addr v8, v6

    aput v8, v25, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 63
    :cond_1b
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    if-eqz v3, :cond_1c

    .line 64
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v2

    aput v2, v23, v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1d
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v12, :cond_20

    .line 65
    aget v2, v13, v1

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisAvailableSize()I

    move-result v3

    if-ge v2, v3, :cond_1e

    const/4 v2, 0x1

    goto :goto_1a

    :cond_1e
    const/4 v2, 0x0

    :goto_1a
    if-nez v2, :cond_1f

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_20
    const/4 v1, 0x1

    :goto_1b
    if-eqz v1, :cond_2a

    .line 67
    invoke-static {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->indexOfMaxValue([I)I

    move-result v1

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisAvailableSize()I

    move-result v2

    aget v1, v13, v1

    sub-int/2addr v2, v1

    neg-int v1, v2

    move-object/from16 v9, v25

    .line 69
    invoke-static {v9, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    .line 70
    invoke-static {v13, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    .line 71
    :goto_1c
    array-length v1, v9

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_23

    aget v5, v9, v3

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v6

    if-ge v5, v6, :cond_21

    const/4 v5, 0x1

    goto :goto_1e

    :cond_21
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_22

    const/4 v1, 0x1

    goto :goto_1f

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_23
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_29

    .line 73
    invoke-static {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->indexOfMinValue([I)I

    move-result v1

    .line 74
    aget v3, v23, v1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_24

    move v3, v14

    goto :goto_20

    .line 75
    :cond_24
    aget v3, v23, v1

    .line 76
    :goto_20
    invoke-static {v0, v3, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findPreviousItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v3

    if-gez v3, :cond_28

    move-object/from16 v8, v23

    .line 77
    invoke-static {v8, v0, v9, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->measure$lambda$18$misalignedStart([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z

    move-result v3

    if-eqz v3, :cond_27

    if-eqz p4, :cond_27

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->reset()V

    .line 79
    array-length v2, v8

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v2, :cond_25

    const/4 v5, -0x1

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 80
    :cond_25
    array-length v2, v9

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v2, :cond_26

    .line 81
    aget v6, v9, v1

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_26
    move/from16 v6, v20

    const/4 v5, 0x0

    .line 82
    invoke-static {v0, v6, v3, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    return-object v0

    :cond_27
    move/from16 v6, v20

    goto :goto_23

    :cond_28
    move/from16 v6, v20

    move-object/from16 v8, v23

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->setSpan(II)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMeasuredItemProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getAndMeasure(II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v5

    .line 85
    aget-object v15, v11, v1

    invoke-virtual {v15, v5}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 86
    aget v15, v9, v1

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v5

    add-int/2addr v15, v5

    aput v15, v9, v1

    .line 87
    aput v3, v8, v1

    goto/16 :goto_1c

    :cond_29
    move/from16 v6, v20

    move-object/from16 v8, v23

    :goto_23
    add-int/2addr v6, v2

    .line 88
    invoke-static {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->indexOfMinValue([I)I

    move-result v1

    .line 89
    aget v2, v9, v1

    if-gez v2, :cond_2b

    .line 90
    aget v1, v9, v1

    add-int/2addr v6, v1

    .line 91
    invoke-static {v13, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    neg-int v1, v1

    .line 92
    invoke-static {v9, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->offsetBy([II)V

    goto :goto_24

    :cond_2a
    move/from16 v6, v20

    move-object/from16 v8, v23

    move-object/from16 v9, v25

    .line 93
    :cond_2b
    :goto_24
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getState()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollToBeConsumed$foundation_release()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v1

    invoke-static {v6}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    if-ne v1, v2, :cond_2c

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getState()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollToBeConsumed$foundation_release()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_2c

    int-to-float v1, v6

    goto :goto_25

    .line 95
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getState()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollToBeConsumed$foundation_release()F

    move-result v1

    :goto_25
    move/from16 v23, v1

    .line 96
    array-length v1, v9

    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object/from16 v15, v21

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    array-length v2, v1

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_2d

    .line 98
    aget v5, v1, v3

    neg-int v5, v5

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 99
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v2

    if-lez v2, :cond_2f

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v10, :cond_2f

    .line 100
    aget-object v3, v11, v2

    .line 101
    invoke-virtual {v3}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_2e

    .line 102
    invoke-virtual {v3, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v15

    .line 103
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-eq v6, v4, :cond_2e

    .line 104
    aget v4, v9, v2

    if-eqz v4, :cond_2e

    .line 105
    aget v4, v9, v2

    if-lt v4, v15, :cond_2e

    .line 106
    aget v4, v9, v2

    sub-int/2addr v4, v15

    aput v4, v9, v2

    add-int/lit8 v6, v6, 0x1

    .line 107
    invoke-virtual {v3, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v4

    aput v4, v8, v2

    const v4, 0x7fffffff

    goto :goto_28

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    const v4, 0x7fffffff

    goto :goto_27

    .line 108
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    goto :goto_29

    .line 110
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-static {v13}, Lkotlin/collections/ArraysKt;->maxOrThrow([I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v2

    :goto_29
    move v15, v2

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-static {v13}, Lkotlin/collections/ArraysKt;->maxOrThrow([I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v2

    goto :goto_2a

    .line 113
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    :goto_2a
    move v6, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2b
    if-ge v2, v10, :cond_32

    .line 114
    aget-object v4, v11, v2

    invoke-virtual {v4}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 115
    :cond_32
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v2, v3, [Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridPositionedItem;

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :goto_2c
    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v10, :cond_34

    .line 116
    aget-object v3, v11, v2

    .line 117
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_33

    const/4 v2, 0x1

    goto :goto_2e

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_34
    const/4 v4, 0x1

    const/4 v2, 0x0

    :goto_2e
    if-eqz v2, :cond_39

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7fffffff

    :goto_2f
    if-ge v2, v10, :cond_37

    .line 118
    aget-object v20, v11, v2

    .line 119
    invoke-virtual/range {v20 .. v20}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v20, :cond_35

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v20

    move/from16 v0, v20

    goto :goto_30

    :cond_35
    const v0, 0x7fffffff

    :goto_30
    if-le v4, v0, :cond_36

    move v4, v0

    move v3, v2

    :cond_36
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_2f

    .line 120
    :cond_37
    aget-object v0, v11, v3

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 121
    aget v2, v1, v3

    if-nez v3, :cond_38

    const/4 v4, 0x0

    goto :goto_31

    .line 122
    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getResolvedSlotSums()[I

    move-result-object v4

    add-int/lit8 v20, v3, -0x1

    aget v4, v4, v20

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getCrossAxisSpacing()I

    move-result v20

    mul-int v20, v20, v3

    add-int v4, v4, v20

    .line 123
    :goto_31
    invoke-virtual {v0, v3, v2, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridPositionedItem;

    move-result-object v2

    .line 124
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 125
    aget v2, v1, v3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v0

    add-int/2addr v2, v0

    aput v2, v1, v3

    move-object/from16 v0, p0

    goto :goto_2c

    :cond_39
    const/4 v0, 0x0

    .line 126
    aget v1, v8, v0

    if-nez v1, :cond_3b

    aget v1, v9, v0

    if-lez v1, :cond_3a

    goto :goto_32

    :cond_3a
    const/16 v18, 0x0

    goto :goto_33

    :cond_3b
    :goto_32
    const/16 v18, 0x1

    :goto_33
    const/4 v1, 0x0

    :goto_34
    if-ge v1, v12, :cond_3e

    .line 127
    aget v2, v13, v1

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisAvailableSize()I

    move-result v3

    if-le v2, v3, :cond_3c

    const/4 v2, 0x1

    goto :goto_35

    :cond_3c
    const/4 v2, 0x0

    :goto_35
    if-eqz v2, :cond_3d

    const/4 v1, 0x1

    goto :goto_36

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3e
    const/4 v1, 0x0

    :goto_36
    if-nez v1, :cond_43

    .line 129
    array-length v1, v7

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v1, :cond_41

    aget v3, v7, v2

    add-int/lit8 v4, v14, -0x1

    if-ge v3, v4, :cond_3f

    const/4 v3, 0x1

    goto :goto_38

    :cond_3f
    const/4 v3, 0x0

    :goto_38
    if-nez v3, :cond_40

    const/4 v7, 0x0

    goto :goto_39

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_41
    const/4 v7, 0x1

    :goto_39
    if-eqz v7, :cond_42

    goto :goto_3a

    :cond_42
    const/4 v11, 0x0

    goto :goto_3b

    :cond_43
    :goto_3a
    const/4 v11, 0x1

    :goto_3b
    const/4 v4, 0x0

    .line 130
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$measure$1$13;

    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$measure$1$13;-><init>(Landroidx/compose/runtime/collection/MutableVector;)V

    const/4 v7, 0x4

    const/4 v10, 0x0

    move-object/from16 v1, v19

    move v2, v15

    move v3, v6

    move-object v12, v5

    move-object v5, v0

    move v0, v6

    move v6, v7

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->p(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v10

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical()Z

    move-result v13

    .line 132
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v1

    move/from16 v4, v26

    move-object v15, v1

    .line 133
    invoke-static {v2, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v16

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v20

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getAfterContentPadding()I

    move-result v21

    .line 136
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-object v6, v0

    const/16 v22, 0x0

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, v23

    move/from16 v12, v18

    move/from16 v18, v4

    move/from16 v19, v24

    invoke-direct/range {v6 .. v22}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZZILjava/util/List;JIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_44
    move/from16 v24, v4

    move/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v18, v23

    move-object/from16 v9, v25

    move/from16 v4, v26

    .line 137
    aget v0, v18, v5

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    .line 138
    aput v8, v18, v5

    .line 139
    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v0

    invoke-virtual {v0, v8, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->setSpan(II)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMeasuredItemProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;

    move-result-object v0

    invoke-virtual {v0, v8, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getAndMeasure(II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v0

    .line 141
    aget v17, v13, v5

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSizeWithSpacings()I

    move-result v21

    add-int v17, v17, v21

    aput v17, v13, v5

    .line 142
    aget-object v1, v11, v5

    invoke-virtual {v1, v0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 143
    aput v8, v7, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v26, v4

    move/from16 v20, v6

    move-object/from16 v25, v9

    move-object/from16 v21, v15

    move-object/from16 v23, v18

    move/from16 v4, v24

    goto/16 :goto_a

    :cond_46
    :goto_3c
    move-object/from16 v19, v4

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v6

    const/4 v7, 0x0

    sget-object v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$measure$1$1;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$measure$1$1;

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object/from16 v4, v19

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope$-CC;->p(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical()Z

    move-result v8

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getConstraints-msEJaDk()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v11

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v0

    neg-int v13, v0

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisAvailableSize()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getAfterContentPadding()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v14

    move v14, v0

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v15

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getAfterContentPadding()I

    move-result v16

    .line 152
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-object v1, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v17}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZZILjava/util/List;JIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final measure$lambda$18$hasSpaceBeforeFirst([I[ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;)Z
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    aget v3, p0, v2

    .line 3
    aget v4, p1, v2

    .line 4
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisSpacing()I

    move-result v5

    neg-int v5, v5

    if-ge v4, v5, :cond_0

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static final measure$lambda$18$misalignedStart([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z
    .locals 8

    .line 1
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .line 4
    aget v7, p0, v6

    invoke-static {p1, v7, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findPreviousItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v7

    if-ne v7, v2, :cond_3

    .line 5
    aget v6, p2, v6

    aget v7, p2, p3

    if-eq v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 6
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 p0, 0x0

    goto :goto_3

    .line 7
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 8
    aget v6, p0, v1

    invoke-static {p1, v6, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findPreviousItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v6

    if-eq v6, v2, :cond_7

    .line 9
    aget v1, p2, v1

    aget v6, p2, p3

    if-lt v1, v6, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    const/4 p0, 0x1

    .line 10
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->getSpan(I)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-nez v5, :cond_a

    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :cond_a
    :goto_5
    return v3
.end method

.method public static final measureStaggeredGrid-yR9pz_M(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;[IJZJIIIII)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    .locals 17
    .param p0    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "$this$measureStaggeredGrid"

    move-object/from16 v8, p0

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    move-object/from16 v15, p1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "itemProvider"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "resolvedSlotSums"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    const/16 v16, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p9

    move-wide/from16 v10, p7

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 p0, v14

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v1 .. v16}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;[IJZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 3
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 5
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 6
    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollPosition$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndices()[I

    move-result-object v5

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollPosition$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getOffsets()[I

    move-result-object v6

    .line 9
    array-length v7, v5

    array-length v8, v0

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    move-object/from16 v12, p0

    goto :goto_3

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->reset()V

    .line 11
    array-length v7, v0

    new-array v8, v7, [I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_3

    .line 12
    array-length v11, v5

    if-ge v10, v11, :cond_1

    aget v11, v5, v10

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 13
    aget v11, v5, v10

    goto :goto_1

    :cond_1
    if-nez v10, :cond_2

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v12, p0

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v10, -0x1

    .line 14
    aget v11, v8, v11

    move-object/from16 v12, p0

    invoke-static {v12, v11, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->findNextItemIndex(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;II)I

    move-result v11

    :goto_2
    aput v11, v8, v10

    .line 15
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getSpans()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    move-result-object v11

    aget v13, v8, v10

    invoke-virtual {v11, v13, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->setSpan(II)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 p0, v12

    goto :goto_0

    :cond_3
    move-object/from16 v12, p0

    move-object v5, v8

    .line 16
    :goto_3
    iput-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 17
    array-length v5, v6

    array-length v7, v0

    if-ne v5, v7, :cond_4

    goto :goto_6

    .line 18
    :cond_4
    array-length v0, v0

    new-array v5, v0, [I

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v0, :cond_7

    .line 19
    array-length v8, v6

    if-ge v7, v8, :cond_5

    .line 20
    aget v8, v6, v7

    goto :goto_5

    :cond_5
    if-nez v7, :cond_6

    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v7, -0x1

    .line 21
    aget v8, v5, v8

    :goto_5
    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    move-object v6, v5

    .line 22
    :goto_6
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollToBeConsumed$foundation_release()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 27
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, [I

    .line 28
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x1

    .line 29
    invoke-static {v12, v0, v1, v2, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 30
    :try_start_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 31
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0
.end method

.method private static final offsetBy([II)V
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget v2, p0, v1

    add-int/2addr v2, p1

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final transform([ILkotlin/jvm/functions/Function1;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
