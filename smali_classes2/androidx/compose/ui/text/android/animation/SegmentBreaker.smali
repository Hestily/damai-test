.class public final Landroidx/compose/ui/text/android/animation/SegmentBreaker;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/animation/SegmentBreaker$WhenMappings;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/text/android/animation/SegmentBreaker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/android/animation/SegmentBreaker;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->INSTANCE:Landroidx/compose/ui/text/android/animation/SegmentBreaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final breakInWords(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    const-string v2, "getLineInstance(Locale.getDefault())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakWithBreakIterator(Ljava/lang/CharSequence;Ljava/text/BreakIterator;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 9
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/android/LayoutHelper;->analyzeBidi(I)Ljava/text/Bidi;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v5

    .line 11
    invoke-virtual {v4}, Ljava/text/Bidi;->getRunCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    .line 12
    invoke-virtual {v4, v7}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final breakSegmentWithChar(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v2, Landroidx/compose/ui/text/android/animation/SegmentType;->Character:Landroidx/compose/ui/text/android/animation/SegmentType;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v2}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakOffsets(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_6

    add-int/lit8 v9, v9, 0x1

    .line 7
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 8
    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v7

    if-eqz p2, :cond_1

    add-int/lit8 v11, v13, 0x1

    if-ne v14, v11, :cond_1

    .line 10
    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Landroidx/compose/ui/text/android/LayoutHelper;->isLineEndSpace(C)Z

    move-result v11

    if-eqz v11, :cond_1

    move/from16 v19, v8

    goto :goto_4

    .line 11
    :cond_1
    invoke-static {v7, v13, v6}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v11

    .line 12
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    const/4 v15, -0x1

    if-ne v12, v15, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 13
    :goto_1
    invoke-virtual {v7, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v15

    if-ne v15, v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 14
    :goto_2
    invoke-virtual {v0, v13, v5, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v5

    move-object/from16 v16, v7

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    if-ne v15, v12, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    .line 15
    invoke-virtual {v0, v14, v6, v7}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v6

    move/from16 v19, v8

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    .line 16
    new-instance v7, Landroidx/compose/ui/text/android/animation/Segment;

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v8, v16

    .line 18
    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 20
    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v18

    move-object v12, v7

    .line 21
    invoke-direct/range {v12 .. v18}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 22
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_4
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v10

    move/from16 v8, v19

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 25
    :cond_5
    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    :cond_6
    return-object v1
.end method

.method private final breakSegmentWithDocument(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Landroidx/compose/ui/text/android/animation/Segment;

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v5

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    .line 5
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 6
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final breakSegmentWithLine(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    .line 4
    new-instance v11, Landroidx/compose/ui/text/android/animation/Segment;

    .line 5
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 6
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v4, v7

    float-to-int v4, v4

    move v7, v4

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 8
    :goto_1
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v4, v9

    float-to-int v4, v4

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    :goto_2
    move v9, v4

    .line 10
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    move-object v4, v11

    .line 11
    invoke-direct/range {v4 .. v10}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 12
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final breakSegmentWithParagraph(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 4
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v6

    .line 5
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphEnd(I)I

    move-result v7

    .line 6
    invoke-static {v1, v6, v3}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v5

    const/4 v8, 0x1

    .line 7
    invoke-static {v1, v7, v8}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v8

    .line 8
    new-instance v12, Landroidx/compose/ui/text/android/animation/Segment;

    const/4 v9, 0x0

    .line 9
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 10
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v11

    .line 11
    invoke-virtual {v1, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object v5, v12

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    .line 12
    invoke-direct/range {v5 .. v11}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 13
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final breakSegmentWithWord(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v2, v2

    .line 3
    sget-object v3, Landroidx/compose/ui/text/android/animation/SegmentType;->Word:Landroidx/compose/ui/text/android/animation/SegmentType;

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakOffsets(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 6
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 7
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_8

    add-int/lit8 v10, v10, 0x1

    .line 8
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 9
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v15

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 10
    invoke-static {v1, v14, v7}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v8

    .line 11
    invoke-virtual {v1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 12
    :goto_1
    invoke-virtual {v1, v14}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v13

    if-ne v13, v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 13
    :goto_2
    invoke-virtual {v0, v14, v6, v7}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v6

    move/from16 v16, v8

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    if-ne v13, v12, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    .line 14
    invoke-virtual {v0, v15, v7, v8}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v7

    move v12, v9

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 16
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz p2, :cond_5

    if-eqz v15, :cond_5

    .line 17
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    add-int/lit8 v9, v15, -0x1

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v9, 0x20

    if-ne v7, v9, :cond_5

    move/from16 v7, v16

    .line 18
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    if-eq v9, v15, :cond_6

    if-eqz v13, :cond_4

    add-int/2addr v8, v2

    goto :goto_4

    :cond_4
    sub-int/2addr v6, v2

    goto :goto_4

    :cond_5
    move/from16 v7, v16

    :cond_6
    :goto_4
    move/from16 v18, v6

    move/from16 v16, v8

    .line 19
    new-instance v6, Landroidx/compose/ui/text/android/animation/Segment;

    .line 20
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 21
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    move-object v13, v6

    .line 22
    invoke-direct/range {v13 .. v19}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 23
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v11

    move v9, v12

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 24
    :cond_7
    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_8
    return-object v5
.end method

.method private final breakWithBreakIterator(Ljava/lang/CharSequence;Ljava/text/BreakIterator;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/BreakIterator;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {p2, v0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Ljava/text/BreakIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/text/BreakIterator;->current()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final breakOffsets(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;)Ljava/util/List;
    .locals 5
    .param p1    # Landroidx/compose/ui/text/android/LayoutHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/android/animation/SegmentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Landroidx/compose/ui/text/android/animation/SegmentType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "layoutHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "segmentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3
    sget-object v2, Landroidx/compose/ui/text/android/animation/SegmentBreaker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const-string/jumbo p1, "text"

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    const-string p2, "getCharacterInstance(Locale.getDefault())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v1, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakWithBreakIterator(Ljava/lang/CharSequence;Ljava/text/BreakIterator;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakInWords(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-array p1, v3, [Ljava/lang/Integer;

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    :goto_0
    if-ge v4, p2, :cond_6

    .line 10
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-array p2, v3, [Ljava/lang/Integer;

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphCount()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_4

    .line 13
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphEnd(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object p1, p2

    goto :goto_2

    :cond_5
    new-array p1, v2, [Ljava/lang/Integer;

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_6
    :goto_2
    return-object p1
.end method

.method public final breakSegments(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;Z)Ljava/util/List;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/android/LayoutHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/android/animation/SegmentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Landroidx/compose/ui/text/android/animation/SegmentType;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "layoutHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "segmentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/animation/SegmentBreaker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithChar(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithWord(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithLine(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithParagraph(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_4
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithDocument(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
