.class public final Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$scrollContainerInfo$1$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/input/ScrollContainerInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt;->pointerScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$scrollContainerInfo$1$1;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$scrollContainerInfo$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$scrollContainerInfo$1$1;->$enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$scrollContainerInfo$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$scrollContainerInfo$1$1;->$enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$scrollContainerInfo$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
