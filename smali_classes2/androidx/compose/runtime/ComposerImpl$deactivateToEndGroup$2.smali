.class final Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->deactivateToEndGroup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $group:I

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->invoke(ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/Object;)V
    .locals 6
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of v0, p2, Landroidx/compose/runtime/RememberObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getReader$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iget v4, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    new-instance v4, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$1;

    iget v5, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    invoke-direct {v4, p2, v5, p1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$1;-><init>(Ljava/lang/Object;II)V

    invoke-static {v0, v2, v4, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_2

    .line 6
    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/CompositionImpl;->setPendingInvalidScopes$runtime_release(Z)V

    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 9
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getReader$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iget v4, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->this$0:Landroidx/compose/runtime/ComposerImpl;

    new-instance v4, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$2;

    iget v5, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;->$group:I

    invoke-direct {v4, p2, v5, p1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2$2;-><init>(Ljava/lang/Object;II)V

    invoke-static {v0, v2, v4, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
