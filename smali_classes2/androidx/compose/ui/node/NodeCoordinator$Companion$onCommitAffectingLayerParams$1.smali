.class final Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->invoke(Landroidx/compose/ui/node/NodeCoordinator;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/node/NodeCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p1}, Landroidx/compose/ui/node/NodeCoordinator;->access$getLayerPositionalProperties$p(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/LayerPositionalProperties;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/compose/ui/node/NodeCoordinator;->access$updateLayerParameters(Landroidx/compose/ui/node/NodeCoordinator;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->access$getTmpLayerPositionalProperties$cp()Landroidx/compose/ui/node/LayerPositionalProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayerPositionalProperties;->copyFrom(Landroidx/compose/ui/node/LayerPositionalProperties;)V

    .line 6
    invoke-static {p1}, Landroidx/compose/ui/node/NodeCoordinator;->access$updateLayerParameters(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 7
    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->access$getTmpLayerPositionalProperties$cp()Landroidx/compose/ui/node/LayerPositionalProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayerPositionalProperties;->hasSameValuesAs(Landroidx/compose/ui/node/LayerPositionalProperties;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getChildrenAccessingCoordinatesDuringPlacement()I

    move-result v1

    if-lez v1, :cond_2

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getCoordinatesAccessedDuringPlacement()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 12
    invoke-static {p1, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    .line 15
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroidx/compose/ui/node/Owner;->requestOnPositionedCallback(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_3
    :goto_0
    return-void
.end method
