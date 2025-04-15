.class final Landroidx/compose/foundation/lazy/LazyListPinnableContainerProviderKt$LazyListPinnableContainerProvider$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListPinnableContainerProviderKt;->LazyListPinnableContainerProvider(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pinnableItem:Landroidx/compose/foundation/lazy/LazyListPinnableItem;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListPinnableItem;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinnableContainerProviderKt$LazyListPinnableContainerProvider$1$1;->$pinnableItem:Landroidx/compose/foundation/lazy/LazyListPinnableItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1
    .param p1    # Landroidx/compose/runtime/DisposableEffectScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinnableContainerProviderKt$LazyListPinnableContainerProvider$1$1;->$pinnableItem:Landroidx/compose/foundation/lazy/LazyListPinnableItem;

    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListPinnableContainerProviderKt$LazyListPinnableContainerProvider$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/lazy/LazyListPinnableContainerProviderKt$LazyListPinnableContainerProvider$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/lazy/LazyListPinnableItem;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListPinnableContainerProviderKt$LazyListPinnableContainerProvider$1$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
