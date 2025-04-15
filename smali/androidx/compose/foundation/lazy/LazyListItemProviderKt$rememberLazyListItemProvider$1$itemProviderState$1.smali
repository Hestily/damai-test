.class final Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListItemProviderKt;->rememberLazyListItemProvider(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

.field final synthetic $latestContent:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $nearestItemsRangeState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Lkotlin/ranges/IntRange;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyItemScopeImpl;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$latestContent:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$nearestItemsRangeState:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScopeImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListScopeImpl;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$latestContent:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 4
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->getIntervals()Landroidx/compose/foundation/lazy/layout/IntervalList;

    move-result-object v3

    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$nearestItemsRangeState:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/ranges/IntRange;

    .line 6
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->getHeaderIndexes()Ljava/util/List;

    move-result-object v5

    .line 7
    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 8
    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v2, v1

    .line 9
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/layout/IntervalList;Lkotlin/ranges/IntRange;Ljava/util/List;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/LazyListState;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$1$itemProviderState$1;->invoke()Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    move-result-object v0

    return-object v0
.end method
