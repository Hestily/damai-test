.class final Landroidx/compose/material/SwipeableV2State$targetState$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableV2State;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material/SwipeableV2State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/SwipeableV2State<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material/SwipeableV2State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SwipeableV2State<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SwipeableV2State$targetState$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/SwipeableV2State$targetState$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-static {v0}, Landroidx/compose/material/SwipeableV2State;->access$getUnsafeOffset(Landroidx/compose/material/SwipeableV2State;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material/SwipeableV2State$targetState$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-virtual {v0}, Landroidx/compose/material/SwipeableV2State;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/SwipeableV2State$targetState$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-virtual {v0}, Landroidx/compose/material/SwipeableV2State;->getAnchors$material_release()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material/SwipeableV2State$targetState$2;->this$0:Landroidx/compose/material/SwipeableV2State;

    invoke-static {v1}, Landroidx/compose/material/SwipeableV2State;->access$getUnsafeOffset(Landroidx/compose/material/SwipeableV2State;)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material/SwipeableV2Kt;->access$closestState(Ljava/util/Map;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
