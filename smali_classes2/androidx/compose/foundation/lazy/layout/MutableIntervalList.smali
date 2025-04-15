.class public final Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/IntervalList;


# annotations
.annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/foundation/lazy/layout/IntervalList<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final intervals:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastInterval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 3
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method private final checkIndexBounds(I)V
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->getSize()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final contains(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "+TT;>;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getSize()I

    move-result p1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    if-ge p2, v1, :cond_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private final getIntervalForIndex(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->lastInterval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->contains(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->access$binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I

    move-result p1

    .line 4
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    .line 5
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 6
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->lastInterval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addInterval(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    return-void

    .line 1
    :cond_1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->getSize()I

    move-result v1

    .line 3
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;-><init>(IILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->getSize()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    .line 5
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "size should be >=0, but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public forEach(IILkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->checkIndexBounds(I)V

    .line 2
    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->checkIndexBounds(I)V

    const/4 v0, 0x1

    if-lt p2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1, p1}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->access$binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I

    move-result p1

    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 6
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v1

    :goto_1
    if-gt v1, p2, :cond_1

    .line 7
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, p1

    .line 9
    check-cast v2, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 10
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p1, v0

    goto :goto_1

    :cond_1
    return-void

    .line 12
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "toIndex ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be not smaller than fromIndex ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->checkIndexBounds(I)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->getIntervalForIndex(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    return v0
.end method
