.class final Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider;->Item(ILandroidx/compose/runtime/Composer;I)V
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
.field final synthetic $$changed:I

.field final synthetic $index:I

.field final synthetic $tmp0_rcvr:Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;->$tmp0_rcvr:Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider;

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;->$index:I

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;->$tmp0_rcvr:Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider;

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;->$index:I

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider$Item$1;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Landroidx/compose/foundation/lazy/layout/DefaultDelegatingLazyLayoutItemProvider;->Item(ILandroidx/compose/runtime/Composer;I)V

    return-void
.end method
