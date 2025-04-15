.class public final Landroidx/compose/ui/node/NodeCoordinatorKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final synthetic access$nextUncheckedUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinatorKt;->nextUncheckedUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final nextUncheckedUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "II)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int v2, v1, p2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    return-object p0

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v0
.end method
