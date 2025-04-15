.class public final Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/foundation/pager/PagerSnapDistance;


# instance fields
.field private final pagesLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    return-void
.end method


# virtual methods
.method public calculateTargetPage(IIFII)I
    .locals 0

    .line 1
    iget p3, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    sub-int p4, p1, p3

    add-int/2addr p1, p3

    invoke-static {p2, p4, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    check-cast p1, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    iget p1, p1, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;->pagesLimit:I

    return v0
.end method
