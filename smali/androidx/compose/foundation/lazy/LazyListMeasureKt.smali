.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final EmptyRange:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->EmptyRange:Lkotlin/Pair;

    return-void
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    move/from16 v4, p11

    move/from16 v5, p6

    if-eqz p8, :cond_0

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

    move/from16 v9, p5

    if-ge v9, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-nez p7, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

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
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_10

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_f

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 6
    new-array v7, v5, [I

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v5, :cond_6

    .line 7
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    move-result v11

    aput v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 8
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

    if-eqz p8, :cond_9

    if-eqz v3, :cond_8

    move-object/from16 v11, p12

    .line 9
    invoke-interface {v3, v11, v6, v7, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_7

    .line 10
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v11, p12

    if-eqz p10, :cond_e

    .line 11
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v3

    move-object/from16 p10, v10

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 12
    :goto_7
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    if-nez v4, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 13
    :goto_8
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v8

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_b

    if-le v7, v8, :cond_c

    :cond_b
    if-gez v3, :cond_13

    if-gt v8, v7, :cond_13

    .line 14
    :cond_c
    :goto_9
    aget v11, v10, v7

    .line 15
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    if-eqz v4, :cond_d

    sub-int v11, v6, v11

    .line 16
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    move-result v13

    sub-int/2addr v11, v13

    .line 17
    :cond_d
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v7, v8, :cond_13

    add-int/2addr v7, v3

    goto :goto_9

    .line 18
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, p7

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_11

    move-object v6, p1

    .line 21
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 22
    check-cast v7, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 23
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v10

    sub-int/2addr v5, v10

    .line 24
    invoke-virtual {v7, v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 25
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p7

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v3, :cond_12

    .line 26
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 27
    check-cast v6, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 28
    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 30
    :cond_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    if-ge v8, v0, :cond_13

    move-object/from16 v3, p2

    .line 31
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 33
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_13
    return-object v9
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

.method private static final createItemsAfterList(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListPinnedItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->hasIntervals()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p0, p3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/2addr v1, p4

    add-int/lit8 p0, p3, -0x1

    .line 5
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-gt p1, p0, :cond_1

    .line 7
    :goto_0
    invoke-static {v0, p2, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList$addItem(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;I)V

    if-eq p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    :goto_1
    if-ge p1, p4, :cond_3

    .line 9
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPinnedItem;

    .line 11
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListPinnedItem;->getIndex()I

    move-result v2

    if-le v2, p0, :cond_2

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListPinnedItem;->getIndex()I

    move-result v2

    if-ge v2, p3, :cond_2

    .line 12
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListPinnedItem;->getIndex()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList$addItem(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static final createItemsAfterList$addItem(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;>;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/List;

    .line 3
    invoke-static {p2}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final createItemsAfterList$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getEnd()I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static final createItemsBeforeList-_ok666U(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "I",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListPinnedItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->hasIntervals()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, p3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList__ok666U$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    sub-int/2addr p0, p4

    const/4 p3, 0x0

    .line 4
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    if-gt p0, p1, :cond_1

    .line 5
    :goto_1
    invoke-static {v0, p2, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList__ok666U$addItem$5(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;I)V

    if-eq p1, p0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge p3, p1, :cond_3

    .line 7
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .line 8
    check-cast p4, Landroidx/compose/foundation/lazy/LazyListPinnedItem;

    .line 9
    invoke-interface {p4}, Landroidx/compose/foundation/lazy/LazyListPinnedItem;->getIndex()I

    move-result v1

    if-ge v1, p0, :cond_2

    .line 10
    invoke-interface {p4}, Landroidx/compose/foundation/lazy/LazyListPinnedItem;->getIndex()I

    move-result p4

    invoke-static {v0, p2, p4}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList__ok666U$addItem$5(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;I)V

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 11
    :cond_3
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static final createItemsBeforeList__ok666U$addItem$5(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;>;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/List;

    .line 3
    invoke-static {p2}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final createItemsBeforeList__ok666U$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getStart()I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static final getNotInEmptyRange(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final measureLazyList-QaF8Ofo(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 29
    .param p1    # Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
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
    .param p17    # Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p20    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListPinnedItem;",
            ">;",
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
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v9, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v10, p9

    move-object/from16 v15, p21

    const-string v0, "itemProvider"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerIndexes"

    move-object/from16 v14, p12

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    move-object/from16 v13, p16

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "placementAnimator"

    move-object/from16 v12, p17

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beyondBoundsInfo"

    move-object/from16 v5, p18

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pinnedItems"

    move-object/from16 v4, p20

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x1

    const/4 v3, 0x0

    if-ltz v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Failed requirement."

    if-eqz v0, :cond_27

    if-ltz p4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_26

    if-gtz v9, :cond_3

    .line 1
    new-instance v13, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;

    invoke-interface {v15, v0, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    neg-int v8, v8

    add-int v9, v7, p4

    const/4 v10, 0x0

    if-eqz p11, :cond_2

    .line 4
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object v11, v0

    move-object v0, v13

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, p15

    move/from16 v12, p4

    .line 5
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    :cond_3
    move/from16 v0, p6

    if-lt v0, v9, :cond_4

    add-int/lit8 v0, v9, -0x1

    .line 6
    invoke-static {v0}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v0

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    move/from16 v2, p7

    .line 7
    :goto_3
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v16

    sub-int v2, v2, v16

    .line 8
    invoke-static {v3}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/foundation/lazy/DataIndex;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_5

    if-gez v2, :cond_5

    add-int v16, v16, v2

    const/4 v2, 0x0

    .line 9
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    neg-int v3, v8

    if-gez p5, :cond_6

    move/from16 v18, p5

    move/from16 v19, v0

    goto :goto_4

    :cond_6
    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_4
    add-int v0, v3, v18

    add-int/2addr v2, v0

    move/from16 v18, v3

    const/4 v3, 0x0

    :goto_5
    if-gez v2, :cond_7

    const/16 p6, 0x0

    .line 10
    invoke-static/range {p6 .. p6}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v17

    sub-int v17, v19, v17

    if-lez v17, :cond_7

    add-int/lit8 v19, v19, -0x1

    .line 11
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v5

    .line 12
    invoke-virtual {v6, v5}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v12

    move/from16 p7, v5

    const/4 v5, 0x0

    .line 13
    invoke-interface {v4, v5, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 15
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v5

    add-int/2addr v2, v5

    move/from16 v19, p7

    move-object/from16 v12, p17

    move-object/from16 v5, p18

    goto :goto_5

    :cond_7
    if-ge v2, v0, :cond_8

    add-int v16, v16, v2

    move v2, v0

    :cond_8
    sub-int/2addr v2, v0

    add-int v12, v7, p4

    move/from16 v20, v3

    const/4 v5, 0x0

    .line 16
    invoke-static {v12, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    neg-int v5, v2

    move/from16 p6, v2

    .line 17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v21, v5

    move/from16 v22, v19

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_9

    .line 18
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .line 19
    check-cast v24, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    add-int/lit8 v22, v22, 0x1

    .line 20
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v22

    .line 21
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v24

    add-int v21, v21, v24

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    move/from16 v2, p6

    move/from16 p6, v12

    move/from16 v5, v20

    move/from16 v12, v21

    move/from16 v15, v22

    :goto_7
    if-ge v15, v9, :cond_d

    if-lt v12, v3, :cond_a

    if-lez v12, :cond_a

    .line 22
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_d

    :cond_a
    move/from16 p7, v3

    .line 23
    invoke-virtual {v6, v15}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v20

    add-int v12, v12, v20

    if-gt v12, v0, :cond_b

    move/from16 v20, v0

    add-int/lit8 v0, v9, -0x1

    if-eq v15, v0, :cond_c

    add-int/lit8 v0, v15, 0x1

    .line 25
    invoke-static {v0}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v0

    .line 26
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v19, v0

    goto :goto_8

    :cond_b
    move/from16 v20, v0

    .line 27
    :cond_c
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 28
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v0

    :goto_8
    add-int/lit8 v15, v15, 0x1

    .line 29
    invoke-static {v15}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v15

    move/from16 v3, p7

    move/from16 v0, v20

    goto :goto_7

    :cond_d
    if-ge v12, v7, :cond_f

    sub-int v0, v7, v12

    sub-int/2addr v2, v0

    add-int/2addr v12, v0

    :goto_9
    if-ge v2, v8, :cond_e

    const/4 v3, 0x0

    .line 30
    invoke-static {v3}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v17

    sub-int v17, v19, v17

    if-lez v17, :cond_e

    add-int/lit8 v19, v19, -0x1

    .line 31
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v13

    .line 32
    invoke-virtual {v6, v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    .line 33
    invoke-interface {v4, v3, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 35
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v14, p12

    move/from16 v19, v13

    move-object/from16 v13, p16

    goto :goto_9

    :cond_e
    add-int v16, v16, v0

    if-gez v2, :cond_f

    add-int v16, v16, v2

    add-int/2addr v12, v2

    move v14, v12

    move/from16 v0, v16

    const/4 v2, 0x0

    goto :goto_a

    :cond_f
    move v14, v12

    move/from16 v0, v16

    :goto_a
    move v12, v5

    .line 36
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v3

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v5

    if-ne v3, v5, :cond_10

    .line 37
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v3, v5, :cond_10

    int-to-float v0, v0

    move v13, v0

    goto :goto_b

    :cond_10
    move/from16 v13, p8

    :goto_b
    if-ltz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_25

    neg-int v5, v2

    .line 38
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    if-gtz v8, :cond_13

    if-gez p5, :cond_12

    goto :goto_d

    :cond_12
    move-object v3, v0

    move/from16 v24, v2

    goto :goto_f

    .line 39
    :cond_13
    :goto_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    move-object v2, v0

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_14

    .line 40
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move/from16 p5, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v1

    if-eqz v3, :cond_14

    if-gt v1, v3, :cond_14

    move-object/from16 p7, v2

    .line 41
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-eq v0, v2, :cond_15

    sub-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    .line 42
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move/from16 v1, p5

    goto :goto_e

    :cond_14
    move-object/from16 p7, v2

    :cond_15
    move/from16 v24, v3

    move-object/from16 v3, p7

    :goto_f
    move-object/from16 v0, p18

    move/from16 v1, v19

    move-object/from16 v2, p1

    move-object v6, v3

    move/from16 v26, v18

    const/16 v25, 0x0

    move/from16 v3, p0

    move-object/from16 v27, v4

    move/from16 v4, p19

    move/from16 v17, v5

    move-object/from16 v5, p20

    .line 43
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList-_ok666U(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v0, :cond_16

    .line 45
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 46
    check-cast v1, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 47
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_16
    move-object/from16 v0, p18

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    move/from16 v3, p0

    move/from16 v4, p19

    move-object/from16 v16, v5

    move-object/from16 v5, p20

    .line 48
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_17

    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 51
    check-cast v2, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 52
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 53
    :cond_17
    invoke-static/range {v27 .. v27}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 54
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v3, 0x1

    goto :goto_12

    :cond_18
    const/4 v3, 0x0

    :goto_12
    if-eqz p11, :cond_19

    move v1, v12

    goto :goto_13

    :cond_19
    move v1, v14

    .line 56
    :goto_13
    invoke-static {v10, v11, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v1

    if-eqz p11, :cond_1a

    move v12, v14

    .line 57
    :cond_1a
    invoke-static {v10, v11, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v2

    move-object/from16 v10, v27

    move-object/from16 v11, v16

    move/from16 v28, p6

    move-object v12, v0

    move v4, v13

    move v13, v1

    move v0, v14

    move v14, v2

    move-object/from16 v5, p21

    move v8, v15

    move v15, v0

    move/from16 v16, p2

    move/from16 v18, p11

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move/from16 v21, p15

    move-object/from16 v22, p16

    .line 58
    invoke-static/range {v10 .. v22}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v10

    float-to-int v11, v4

    move-object/from16 p5, p17

    move/from16 p6, v11

    move/from16 p7, v1

    move/from16 p8, v2

    move-object/from16 p9, v10

    move-object/from16 p10, p1

    .line 59
    invoke-virtual/range {p5 .. p10}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;)V

    .line 60
    invoke-interface/range {p12 .. p12}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1b

    move-object/from16 p5, v10

    move-object/from16 p6, p1

    move-object/from16 p7, p12

    move/from16 p8, p3

    move/from16 p9, v1

    move/from16 p10, v2

    .line 61
    invoke-static/range {p5 .. p10}, Landroidx/compose/foundation/lazy/LazyListHeadersKt;->findOrComposeLazyListHeader(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v11

    goto :goto_14

    :cond_1b
    const/4 v11, 0x0

    :goto_14
    if-lt v8, v9, :cond_1d

    if-le v0, v7, :cond_1c

    goto :goto_15

    :cond_1c
    const/4 v7, 0x0

    goto :goto_16

    :cond_1d
    :goto_15
    const/4 v7, 0x1

    .line 62
    :goto_16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$5;

    invoke-direct {v2, v10, v11}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$5;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListPositionedItem;)V

    invoke-interface {v5, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v3, :cond_1e

    goto :goto_19

    .line 63
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_23

    .line 65
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 66
    move-object v8, v2

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 67
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v12

    invoke-static/range {v27 .. v27}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v13

    if-lt v12, v13, :cond_1f

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v12

    invoke-static/range {v27 .. v27}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v13

    if-le v12, v13, :cond_20

    :cond_1f
    if-ne v8, v11, :cond_21

    :cond_20
    const/4 v8, 0x1

    goto :goto_18

    :cond_21
    const/4 v8, 0x0

    :goto_18
    if-eqz v8, :cond_22

    .line 68
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_23
    move-object v10, v0

    :goto_19
    if-eqz p11, :cond_24

    .line 69
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1a

    :cond_24
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1a
    move-object v11, v0

    .line 70
    new-instance v13, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object v0, v13

    move-object v1, v6

    move/from16 v2, v24

    move v3, v7

    move-object v6, v10

    move/from16 v7, v26

    move/from16 v8, v28

    move/from16 v9, p0

    move/from16 v10, p15

    move/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    .line 71
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
