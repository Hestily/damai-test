.class public final Landroidx/compose/ui/focus/FocusTransactionsKt;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final captureFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z
    .locals 2
    .param p0    # Landroidx/compose/ui/focus/FocusTargetModifierNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusStateImpl$ui_release()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 4
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_3
    :goto_1
    return v1
.end method

.method private static final clearChildFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZ)Z
    .locals 0
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZ)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static synthetic clearChildFocus$default(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 1
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearChildFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final clearFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZ)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/focus/FocusTargetModifierNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusStateImpl$ui_release()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 p0, 0x4

    if-ne v0, p0, :cond_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 3
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearChildFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    .line 6
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    if-eqz p2, :cond_6

    .line 7
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    goto :goto_1

    .line 8
    :cond_5
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    if-eqz p2, :cond_0

    .line 9
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    goto :goto_0

    :cond_6
    :goto_1
    return p1
.end method

.method public static synthetic clearFocus$default(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final freeFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/focus/FocusTargetModifierNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusStateImpl$ui_release()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 4
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_3
    :goto_1
    return v1
.end method

.method private static final grantFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusTransactionsKt$grantFocus$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/focus/FocusTransactionsKt$grantFocus$1;-><init>(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 2
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusStateImpl$ui_release()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final requestFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z
    .locals 5
    .param p0    # Landroidx/compose/ui/focus/FocusTargetModifierNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$requestFocus$1;->INSTANCE:Landroidx/compose/ui/focus/FocusTransactionsKt$requestFocus$1;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetModifierNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusStateImpl$ui_release()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    const/16 v0, 0x400

    .line 6
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 7
    invoke-static {p0, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->nearestAncestor(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    instance-of v3, v0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v2, :cond_2

    .line 8
    invoke-static {v2, p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocusForChild(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result p0

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocusForOwner(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->grantFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 10
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_4
    move p0, v1

    :goto_2
    return p0

    .line 11
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 12
    :cond_6
    invoke-static {p0, v4, v4, v3, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearChildFocus$default(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->grantFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 13
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_8
    return v1

    .line 14
    :cond_9
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    return v1

    .line 15
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final requestFocusForChild(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z
    .locals 6

    const/16 v0, 0x400

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 2
    invoke-static {p1, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->nearestAncestor(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    instance-of v2, v1, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 3
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusStateImpl$ui_release()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_a

    const/4 v5, 0x2

    if-eq v1, v5, :cond_b

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 6
    invoke-static {p0, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->nearestAncestor(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-nez v3, :cond_2

    .line 7
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocusForOwner(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 9
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    .line 10
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocusForChild(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result v4

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_b

    .line 11
    invoke-static {v3, p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocusForChild(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocusForChild(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result p1

    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->getFocusState()Landroidx/compose/ui/focus/FocusState;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    move v4, p1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 15
    :cond_6
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 16
    invoke-static {p0, v4, v4, v5, v3}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearChildFocus$default(Landroidx/compose/ui/focus/FocusTargetModifierNode;ZZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->grantFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    .line 17
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_8
    move v4, v2

    goto :goto_3

    .line 18
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_a
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->grantFocus(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 20
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->setFocusStateImpl$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 21
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    .line 22
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_b
    :goto_3
    return v4

    .line 23
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Non child node cannot request focus."

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final requestFocusForOwner(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->requestFocus()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Owner not initialized."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
