.class public final Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/foundation/text/selection/MouseSelectionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;->update(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

.field private lastPosition:J

.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    return-void
.end method


# virtual methods
.method public final getLastPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    return-wide v0
.end method

.method public onDrag-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 9
    .param p3    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adjustment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    const/4 v0, 0x1

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object v3, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 3
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    .line 4
    :cond_1
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    const/4 v7, 0x0

    move-wide v3, p1

    move-object v8, p3

    .line 5
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result p3

    if-ne p3, v0, :cond_2

    .line 6
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    :cond_2
    return v0
.end method

.method public onExtend-k-4lQ0M(J)Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    iget-object v9, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object v10, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    const/4 v7, 0x0

    .line 4
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getNone()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v8

    move-object v1, v9

    move-wide v3, p1

    .line 5
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 7
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide p1

    invoke-static {v9, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public onExtendDrag-k-4lQ0M(J)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    .line 4
    :cond_1
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    const/4 v7, 0x0

    .line 5
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getNone()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v8

    move-wide v3, p1

    .line 6
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onStart-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 5
    .param p3    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adjustment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object v3, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {v2, v0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateStart-d-4ec7I(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 4
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 5
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide p1

    invoke-static {v2, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final setLastPosition(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    return-void
.end method
