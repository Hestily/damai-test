.class final Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->createTransitionInfo(Landroidx/compose/animation/core/Transition$TransitionAnimationState;J)Landroidx/compose/animation/tooling/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $endTimeMs:J

.field final synthetic $startTimeMs$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stepMs:J

.field final synthetic $this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;JJLkotlin/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;",
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;",
            "JJ",
            "Lkotlin/Lazy<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iput-object p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    iput-wide p3, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$endTimeMs:J

    iput-wide p5, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$stepMs:J

    iput-object p7, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$createTransitionInfo$lambda-21(Lkotlin/Lazy;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object v2

    .line 4
    iget-object v3, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    iget-object v4, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    invoke-static {v4}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$createTransitionInfo$lambda-21(Lkotlin/Lazy;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$millisToNanos(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;J)J

    move-result-wide v3

    .line 5
    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$endTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    iget-wide v4, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$endTimeMs:J

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$millisToNanos(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$createTransitionInfo$lambda-21(Lkotlin/Lazy;)J

    move-result-wide v8

    iget-wide v6, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$stepMs:J

    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-lez v3, :cond_1

    iget-wide v4, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$endTimeMs:J

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(JJJ)J

    move-result-wide v1

    cmp-long v3, v8, v1

    if-gtz v3, :cond_0

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 8
    iget-object v4, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-static {v5, v8, v9}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$millisToNanos(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v3, v8, v1

    if-eqz v3, :cond_0

    .line 9
    iget-wide v3, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$stepMs:J

    add-long/2addr v8, v3

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;->$stepMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
