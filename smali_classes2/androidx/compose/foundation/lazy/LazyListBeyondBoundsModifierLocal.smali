.class final Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout;
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        ">;",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;"
    }
.end annotation


# instance fields
.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beyondBoundsInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "orientation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 4
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 5
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public static final synthetic access$hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z

    move-result p0

    return p0
.end method

.method private final addNextInterval-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getStart()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getEnd()I

    move-result p1

    .line 3
    sget-object v1, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBefore-hoxUOeE()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAfter-hoxUOeE()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAbove-hoxUOeE()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_0

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBelow-hoxUOeE()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_2

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getLeft-hoxUOeE()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_6

    goto :goto_2

    .line 8
    :cond_6
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_2

    goto :goto_0

    .line 9
    :cond_7
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_0

    goto :goto_1

    .line 10
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getRight-hoxUOeE()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v4, :cond_a

    if-eq p2, v3, :cond_9

    goto :goto_2

    .line 11
    :cond_9
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_0

    goto :goto_1

    .line 12
    :cond_a
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 13
    :goto_2
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    invoke-virtual {p2, v0, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->addInterval(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    move-result-object p1

    return-object p1

    .line 14
    :cond_b
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->access$unsupportedDirection()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->isOppositeToOrientation-4vf7U8o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sget-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBefore-hoxUOeE()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    move-result p1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAfter-hoxUOeE()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    move-result p1

    goto/16 :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAbove-hoxUOeE()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_3

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    move-result p1

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    move-result p1

    goto/16 :goto_0

    .line 5
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBelow-hoxUOeE()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_5

    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    move-result p1

    goto/16 :goto_0

    :cond_5
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    move-result p1

    goto/16 :goto_0

    .line 6
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getLeft-hoxUOeE()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_9

    if-ne p2, v2, :cond_8

    .line 7
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_7

    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    move-result p1

    goto :goto_0

    :cond_7
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    move-result p1

    goto :goto_0

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 8
    :cond_9
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_a

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    move-result p1

    goto :goto_0

    :cond_a
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getRight-hoxUOeE()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_e

    if-ne p2, v2, :cond_d

    .line 10
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_c

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    move-result p1

    goto :goto_0

    :cond_c
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    move-result p1

    goto :goto_0

    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 11
    :cond_e
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    if-eqz p2, :cond_f

    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    move-result p1

    goto :goto_0

    :cond_f
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    move-result p1

    :goto_0
    return p1

    .line 12
    :cond_10
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->access$unsupportedDirection()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private static final hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getEnd()I

    move-result p0

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getStart()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isOppositeToOrientation-4vf7U8o(I)Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAbove-hoxUOeE()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBelow-hoxUOeE()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_1

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_4

    .line 2
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getLeft-hoxUOeE()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getRight-hoxUOeE()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_1

    goto :goto_4

    .line 3
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBefore-hoxUOeE()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAfter-hoxUOeE()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_6

    goto :goto_1

    :goto_4
    return v2

    .line 4
    :cond_6
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->access$unsupportedDirection()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method


# virtual methods
.method public synthetic all(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1}, Ltb/wt2;->a(Landroidx/compose/ui/Modifier$Element;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public synthetic any(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1}, Ltb/wt2;->b(Landroidx/compose/ui/Modifier$Element;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public synthetic foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ltb/wt2;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic foldOut(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ltb/wt2;->d(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->getModifierLocalBeyondBoundsLayout()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->getValue()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    move-result-object v0

    return-object v0
.end method

.method public layout-o7g1Pn8(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 2
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result v2

    .line 3
    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v3

    .line 4
    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->addInterval(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 5
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    invoke-direct {p0, v2, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    invoke-direct {p0, v1, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->addNextInterval-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->removeInterval(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 8
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    .line 10
    :cond_0
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;

    invoke-direct {v1, p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;-><init>(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    .line 11
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->removeInterval(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 13
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_2
    return-object v1
.end method

.method public synthetic then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    invoke-static {p0, p1}, Ltb/vt2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
