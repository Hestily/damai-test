.class final Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$startTimeMs$2;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$startTimeMs$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$startTimeMs$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/compose/animation/core/TweenSpec;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/animation/core/TweenSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/TweenSpec;->getDelay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Landroidx/compose/animation/core/SnapSpec;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/compose/animation/core/SnapSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/SnapSpec;->getDelay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Landroidx/compose/animation/core/KeyframesSpec;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/compose/animation/core/KeyframesSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/KeyframesSpec;->getConfig()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getDelayMillis()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    instance-of v1, v0, Landroidx/compose/animation/core/RepeatableSpec;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    .line 7
    check-cast v0, Landroidx/compose/animation/core/RepeatableSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/RepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/animation/core/StartOffset;->getOffsetType-Eo1U57Q(J)I

    move-result v1

    sget-object v4, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {v4}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getDelay-Eo1U57Q()I

    move-result v4

    invoke-static {v1, v4}, Landroidx/compose/animation/core/StartOffsetType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Landroidx/compose/animation/core/RepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->getOffsetMillis-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_4
    instance-of v1, v0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    if-eqz v1, :cond_6

    .line 11
    check-cast v0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/animation/core/StartOffset;->getOffsetType-Eo1U57Q(J)I

    move-result v1

    sget-object v4, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {v4}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getDelay-Eo1U57Q()I

    move-result v4

    invoke-static {v1, v4}, Landroidx/compose/animation/core/StartOffsetType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v0}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->getOffsetMillis-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_6
    instance-of v1, v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    if-eqz v1, :cond_7

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-interface {v0}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDelayMillis()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$startTimeMs$2;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
