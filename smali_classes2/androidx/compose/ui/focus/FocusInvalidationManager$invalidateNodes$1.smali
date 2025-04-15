.class final Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x10

    const/16 v5, 0x400

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "Check failed."

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 4
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 5
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 7
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    if-nez v4, :cond_1

    .line 8
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-static {v8, v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    sub-int/2addr v3, v6

    .line 12
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 13
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    .line 14
    invoke-static {v8, v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 16
    instance-of v4, v3, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 17
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_1

    .line 19
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_6
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 21
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 22
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 24
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x0

    .line 25
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v11

    .line 26
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 27
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v13, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 28
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    if-nez v13, :cond_7

    .line 29
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_3

    .line 30
    :cond_7
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 31
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 32
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v15

    sub-int/2addr v15, v6

    .line 33
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .line 34
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v16

    and-int v16, v16, v11

    if-nez v16, :cond_8

    .line 35
    invoke-static {v12, v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_6

    :cond_8
    :goto_5
    if-eqz v15, :cond_c

    .line 36
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v16

    and-int v16, v16, v11

    if-eqz v16, :cond_b

    .line 37
    instance-of v4, v15, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v4, :cond_c

    check-cast v15, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v10, :cond_9

    const/4 v14, 0x1

    .line 38
    :cond_9
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 39
    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    :cond_a
    move-object v10, v15

    goto :goto_6

    .line 40
    :cond_b
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    const/16 v4, 0x10

    goto :goto_5

    :cond_c
    :goto_6
    const/16 v4, 0x10

    goto :goto_4

    :cond_d
    if-eqz v13, :cond_12

    if-eqz v14, :cond_e

    .line 41
    invoke-static {v9}, Landroidx/compose/ui/focus/FocusEventModifierKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v4

    goto :goto_7

    :cond_e
    if-eqz v10, :cond_f

    .line 42
    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusState()Landroidx/compose/ui/focus/FocusState;

    move-result-object v4

    if-nez v4, :cond_10

    :cond_f
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 43
    :cond_10
    :goto_7
    invoke-interface {v9, v4}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    goto :goto_8

    .line 44
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_8
    const/16 v4, 0x10

    goto/16 :goto_2

    .line 45
    :cond_13
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 46
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 48
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 49
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusState()Landroidx/compose/ui/focus/FocusState;

    move-result-object v4

    .line 50
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->invalidateFocus$ui_release()V

    .line 51
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusState()Landroidx/compose/ui/focus/FocusState;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 52
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 53
    :cond_15
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    goto :goto_9

    .line 54
    :cond_16
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 55
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 56
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 57
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 58
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
