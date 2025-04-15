.class public final Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/pager/PagerStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final totalItemsCount:I

.field private final viewportEndOffset:I

.field private final viewportStartOffset:I

.field private final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->visibleItemsInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public synthetic getAfterContentPadding()I
    .locals 1

    invoke-static {p0}, Ltb/xd2;->a(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result v0

    return v0
.end method

.method public synthetic getBeforeContentPadding()I
    .locals 1

    invoke-static {p0}, Ltb/xd2;->b(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result v0

    return v0
.end method

.method public synthetic getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1

    invoke-static {p0}, Ltb/xd2;->c(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getReverseLayout()Z
    .locals 1

    invoke-static {p0}, Ltb/xd2;->d(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)Z

    move-result v0

    return v0
.end method

.method public getTotalItemsCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->totalItemsCount:I

    return v0
.end method

.method public getViewportEndOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->viewportEndOffset:I

    return v0
.end method

.method public synthetic getViewportSize-YbymL2g()J
    .locals 2

    invoke-static {p0}, Ltb/xd2;->e(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->viewportStartOffset:I

    return v0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->visibleItemsInfo:Ljava/util/List;

    return-object v0
.end method
