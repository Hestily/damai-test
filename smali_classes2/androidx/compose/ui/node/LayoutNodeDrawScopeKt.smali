.class public final Landroidx/compose/ui/node/LayoutNodeDrawScopeKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final synthetic access$nextDrawNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DrawModifierNode;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScopeKt;->nextDrawNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DrawModifierNode;

    move-result-object p0

    return-object p0
.end method

.method private static final nextDrawNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DrawModifierNode;
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    return-object v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 7
    check-cast p0, Landroidx/compose/ui/node/DrawModifierNode;

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v2
.end method
