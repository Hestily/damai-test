.class public final Landroidx/compose/ui/node/NodeKindKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final Inserted:I = 0x1

.field private static final Removed:I = 0x2

.field private static final Updated:I


# direct methods
.method public static final autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier$Node;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V

    return-void
.end method

.method private static final autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurements(Landroidx/compose/ui/node/LayoutModifierNode;)V

    if-ne p1, v0, :cond_1

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 6
    invoke-static {p0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->detach()V

    :cond_1
    const/16 v1, 0x100

    .line 8
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 10
    instance-of v1, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v1, :cond_3

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_3
    const/4 v1, 0x4

    .line 12
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 14
    instance-of v1, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_5

    .line 15
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_5
    const/16 v1, 0x8

    .line 16
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 18
    instance-of v1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_7

    .line 19
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_7
    const/16 v1, 0x40

    .line 20
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_9

    .line 22
    instance-of v1, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v1, :cond_9

    .line 23
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/ParentDataModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/ParentDataModifierNodeKt;->invalidateParentData(Landroidx/compose/ui/node/ParentDataModifierNode;)V

    :cond_9
    const/16 v1, 0x400

    .line 24
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_c

    .line 26
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v1, :cond_c

    if-ne p1, v0, :cond_b

    .line 27
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->onRemoved$ui_release()V

    goto :goto_6

    .line 28
    :cond_b
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    invoke-interface {v1, v4}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_c
    :goto_6
    const/16 v1, 0x800

    .line 29
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_f

    .line 31
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_f

    .line 32
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-ne p1, v0, :cond_e

    .line 33
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->scheduleInvalidationOfAssociatedFocusTargets(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    goto :goto_8

    .line 34
    :cond_e
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v4

    invoke-interface {v4, v1}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    :cond_f
    :goto_8
    const/16 v1, 0x1000

    .line 35
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_11

    .line 37
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v1, :cond_11

    if-eq p1, v0, :cond_11

    .line 38
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p1

    check-cast p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    :cond_11
    return-void
.end method

.method public static final autoInvalidateRemovedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier$Node;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V

    return-void
.end method

.method public static final autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier$Node;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V

    return-void
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 2
    instance-of v1, p0, Landroidx/compose/ui/layout/LayoutModifier;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifier;

    if-eqz v1, :cond_1

    const/16 v1, 0x200

    .line 5
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/draw/DrawModifier;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 8
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/semantics/SemanticsModifier;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    .line 9
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 10
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    .line 11
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 12
    :cond_4
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-nez v1, :cond_5

    .line 13
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    if-eqz v1, :cond_6

    :cond_5
    const/16 v1, 0x20

    .line 14
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 15
    :cond_6
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusEventModifier;

    if-eqz v1, :cond_7

    const/16 v1, 0x1000

    .line 16
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 17
    :cond_7
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusOrderModifier;

    if-eqz v1, :cond_8

    const/16 v1, 0x800

    .line 18
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 19
    :cond_8
    instance-of v1, p0, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    if-eqz v1, :cond_9

    const/16 v1, 0x100

    .line 20
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 21
    :cond_9
    instance-of v1, p0, Landroidx/compose/ui/layout/ParentDataModifier;

    if-eqz v1, :cond_a

    const/16 v1, 0x40

    .line 22
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 23
    :cond_a
    instance-of v1, p0, Landroidx/compose/ui/layout/OnPlacedModifier;

    if-nez v1, :cond_b

    .line 24
    instance-of v1, p0, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    if-nez v1, :cond_b

    .line 25
    instance-of p0, p0, Landroidx/compose/ui/layout/LookaheadOnPlacedModifier;

    if-eqz p0, :cond_c

    :cond_b
    const/16 p0, 0x80

    .line 26
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_c
    return v0
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier$Node;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 28
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 29
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 30
    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 31
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 32
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 33
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 34
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    .line 35
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 36
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalNode;

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    .line 37
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 38
    :cond_4
    instance-of v1, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v1, :cond_5

    const/16 v1, 0x40

    .line 39
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 40
    :cond_5
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v1, :cond_6

    const/16 v1, 0x80

    .line 41
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 42
    :cond_6
    instance-of v1, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    .line 43
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 44
    :cond_7
    instance-of v1, p0, Landroidx/compose/ui/node/IntermediateLayoutModifierNode;

    if-eqz v1, :cond_8

    const/16 v1, 0x200

    .line 45
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 46
    :cond_8
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    .line 47
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 48
    :cond_9
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    .line 49
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 50
    :cond_a
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v1, :cond_b

    const/16 v1, 0x1000

    .line 51
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 52
    :cond_b
    instance-of v1, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v1, :cond_c

    const/16 v1, 0x2000

    .line 53
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 54
    :cond_c
    instance-of p0, p0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz p0, :cond_d

    const/16 p0, 0x4000

    .line 55
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_d
    return v0
.end method

.method public static final getIncludeSelfInTraversal-H91voCI(I)Z
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic getIncludeSelfInTraversal-H91voCI$annotations(I)V
    .locals 0

    return-void
.end method

.method public static final or-64DMado(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method private static final specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z
    .locals 1
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->reset()V

    .line 2
    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->modifyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->isCanFocusSet()Z

    move-result p0

    return p0
.end method
