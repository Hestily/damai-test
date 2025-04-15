.class final Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1;->invoke(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;ILandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $interval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyItemScopeImpl;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->$interval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->$itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->$index:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0x43c56bbd

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.$$delegate_0.<anonymous>.<anonymous> (LazyListItemProvider.kt:81)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->$interval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getItem()Lkotlin/jvm/functions/Function4;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->$itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->$index:I

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$1$1;->$interval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v0, v1, p1, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
