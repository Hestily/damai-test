.class public Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;,
        Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animateContentSizeSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animateXAsStateSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber<",
            "Landroidx/compose/animation/core/Animatable<",
            "**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animatedContentSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber<",
            "Landroidx/compose/animation/core/Transition<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animatedVisibilityStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animatedVisibilityStatesLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final decayAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber<",
            "Landroidx/compose/animation/core/DecayAnimation<",
            "**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final infiniteTransitionSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber<",
            "Landroidx/compose/animation/core/InfiniteTransition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final setAnimationsTimeCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final targetBasedAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber<",
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackedAnimatedVisibility:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackedTransitions:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackedUnsupported:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transitionStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transitionStatesLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setAnimationsTimeCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->setAnimationsTimeCallback:Lkotlin/jvm/functions/Function0;

    const-string p1, "PreviewAnimationClock"

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->TAG:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    .line 5
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedUnsupported:Ljava/util/LinkedHashSet;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStates:Ljava/util/HashMap;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStatesLock:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStatesLock:Ljava/lang/Object;

    .line 10
    new-instance p1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;-><init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animateXAsStateSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    .line 11
    new-instance p1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;-><init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animateContentSizeSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    .line 12
    new-instance p1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;-><init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->targetBasedAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    .line 13
    new-instance p1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;-><init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->decayAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    .line 14
    new-instance p1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;-><init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedContentSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    .line 15
    new-instance p1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;-><init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->infiniteTransitionSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 16
    sget-object p1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$1;->INSTANCE:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$1;

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$createTransitionInfo$lambda-21(Lkotlin/Lazy;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->createTransitionInfo$lambda-21(Lkotlin/Lazy;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getDEBUG$p(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->DEBUG:Z

    return p0
.end method

.method public static final synthetic access$getTAG$p(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$millisToNanos(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->millisToNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "*>;)",
            "Ljava/util/List<",
            "Landroidx/compose/animation/core/Transition<",
            "*>.TransitionAnimationState<**>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getTransitions()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 5
    invoke-direct {p0, v2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getAnimations()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final createTransitionInfo(Landroidx/compose/animation/core/Transition$TransitionAnimationState;J)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;J)",
            "Landroidx/compose/animation/tooling/TransitionInfo;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getDurationNanos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->nanosToMillis(J)J

    move-result-wide v0

    .line 2
    new-instance v2, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$startTimeMs$2;

    invoke-direct {v2, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$startTimeMs$2;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v10

    .line 3
    new-instance v11, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p0

    move-wide v5, v0

    move-wide v7, p2

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$createTransitionInfo$values$2;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;JJLkotlin/Lazy;)V

    invoke-static {v11}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 4
    new-instance p3, Landroidx/compose/animation/tooling/TransitionInfo;

    .line 5
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo p1, "this.animationSpec.javaClass.name"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v10}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->createTransitionInfo$lambda-21(Lkotlin/Lazy;)J

    move-result-wide v5

    invoke-static {p2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->createTransitionInfo$lambda-22(Lkotlin/Lazy;)Ljava/util/Map;

    move-result-object v9

    move-object v2, p3

    move-wide v7, v0

    .line 7
    invoke-direct/range {v2 .. v9}, Landroidx/compose/animation/tooling/TransitionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;)V

    return-object p3
.end method

.method static synthetic createTransitionInfo$default(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;Landroidx/compose/animation/core/Transition$TransitionAnimationState;JILjava/lang/Object;)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->createTransitionInfo(Landroidx/compose/animation/core/Transition$TransitionAnimationState;J)Landroidx/compose/animation/tooling/TransitionInfo;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createTransitionInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final createTransitionInfo$lambda-21(Lkotlin/Lazy;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final createTransitionInfo$lambda-22(Lkotlin/Lazy;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Lazy<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic getAnimatedVisibilityStates$ui_tooling_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getTrackedAnimatedVisibility$ui_tooling_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getTrackedTransitions$ui_tooling_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getTrackedUnsupported$ui_tooling_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getTransitionStates$ui_tooling_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final millisToNanos(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    return-wide p1
.end method

.method private final nanosToMillis(J)J
    .locals 2

    const v0, 0xf423f

    int-to-long v0, v0

    add-long/2addr p1, v0

    const v0, 0xf4240

    int-to-long v0, v0

    .line 1
    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final toCurrentTargetPair-RvB7uIg(Ljava/lang/String;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Companion:Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;->getEnter-q9NwIk0()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic trackAnimatedVisibility$default(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$1;->INSTANCE:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackAnimatedVisibility$1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackAnimatedVisibility(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: trackAnimatedVisibility"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    .line 3
    check-cast v1, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifyUnsubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    .line 6
    check-cast v1, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifyUnsubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedUnsupported:Ljava/util/LinkedHashSet;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation;

    .line 9
    check-cast v1, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifyUnsubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 11
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 12
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 14
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedUnsupported:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 15
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedContentSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->clear()V

    .line 16
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animateXAsStateSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->clear()V

    .line 17
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->targetBasedAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->clear()V

    .line 18
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->decayAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->clear()V

    .line 19
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animateContentSizeSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->clear()V

    .line 20
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->infiniteTransitionSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->clear()V

    return-void
.end method

.method public final getAnimatedProperties(Landroidx/compose/animation/tooling/ComposeAnimation;)Ljava/util/List;
    .locals 5
    .param p1    # Landroidx/compose/animation/tooling/ComposeAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/tooling/ComposeAnimation;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/animation/tooling/ComposeAnimatedProperty;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 7
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    new-instance v4, Landroidx/compose/animation/tooling/ComposeAnimatedProperty;

    invoke-direct {v4, v3, v2}, Landroidx/compose/animation/tooling/ComposeAnimatedProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    if-eqz v4, :cond_0

    .line 8
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    check-cast p1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getChildTransition()Landroidx/compose/animation/core/Transition;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 11
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 15
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v4, v1

    goto :goto_3

    :cond_5
    new-instance v4, Landroidx/compose/animation/tooling/ComposeAnimatedProperty;

    invoke-direct {v4, v3, v2}, Landroidx/compose/animation/tooling/ComposeAnimatedProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    if-eqz v4, :cond_4

    .line 16
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v0

    .line 17
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getAnimatedVisibilityState-zrx7VqY(Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "composeAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Companion:Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;->getEnter-q9NwIk0()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final getAnimatedVisibilityStates$ui_tooling_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMaxDuration()J
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    .line 5
    invoke-virtual {v3}, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->nanosToMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v3

    .line 8
    :goto_1
    iget-object v5, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    check-cast v5, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    .line 12
    invoke-virtual {v5}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getChildTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->nanosToMillis(J)J

    move-result-wide v7

    goto :goto_3

    :cond_2
    move-wide v7, v3

    :goto_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 15
    :cond_4
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxDurationPerIteration()J
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    .line 5
    invoke-virtual {v3}, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->nanosToMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v3

    .line 8
    :goto_1
    iget-object v5, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    check-cast v5, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    .line 12
    invoke-virtual {v5}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getChildTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->nanosToMillis(J)J

    move-result-wide v7

    goto :goto_3

    :cond_2
    move-wide v7, v3

    :goto_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 15
    :cond_4
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackedAnimatedVisibility$ui_tooling_release()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final getTrackedTransitions$ui_tooling_release()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final getTrackedUnsupported$ui_tooling_release()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedUnsupported:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final getTransitionStates$ui_tooling_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStates:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTransitions(Landroidx/compose/animation/tooling/ComposeAnimation;J)Ljava/util/List;
    .locals 2
    .param p1    # Landroidx/compose/animation/tooling/ComposeAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/tooling/ComposeAnimation;",
            "J)",
            "Ljava/util/List<",
            "Landroidx/compose/animation/tooling/TransitionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 7
    invoke-direct {p0, v1, p2, p3}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->createTransitionInfo(Landroidx/compose/animation/core/Transition$TransitionAnimationState;J)Landroidx/compose/animation/tooling/TransitionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getChildTransition()Landroidx/compose/animation/core/Transition;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 14
    invoke-direct {p0, v1, p2, p3}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->createTransitionInfo(Landroidx/compose/animation/core/Transition$TransitionAnimationState;J)Landroidx/compose/animation/tooling/TransitionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 15
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected notifySubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/tooling/ComposeAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyUnsubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/tooling/ComposeAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setClockTime(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    move-object v3, v2

    check-cast v3, Landroidx/compose/animation/tooling/ComposeAnimation;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->setClockTimes(Ljava/util/Map;)V

    return-void
.end method

.method public final setClockTimes(Ljava/util/Map;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/animation/tooling/ComposeAnimation;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "animationTimeMillis"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.ui.tooling.animation.TransitionComposeAnimation"

    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "transitionStates[it] ?: return@let"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;->getCurrent()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;->getTarget()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.ui.tooling.animation.AnimatedVisibilityComposeAnimation"

    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->unbox-impl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->box-impl(Ljava/lang/String;)Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    move-result-object v4

    const-string v5, "animatedVisibilityStates[it]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->toCurrentTargetPair-RvB7uIg(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 12
    :cond_4
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->setAnimationsTimeCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final trackAnimateContentSize(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "sizeAnimationModifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animateContentSizeSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    const-string v1, "animateContentSize"

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->trackAnimation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final trackAnimateXAsState(Landroidx/compose/animation/core/Animatable;)V
    .locals 2
    .param p1    # Landroidx/compose/animation/core/Animatable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "animatable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animateXAsStateSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->trackAnimation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final trackAnimatedContent(Landroidx/compose/animation/core/Transition;)V
    .locals 2
    .param p1    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "animatedContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedContentSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    const-string v1, "AnimatedContent"

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->trackAnimation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final trackAnimatedVisibility(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p1    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onSeek"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimatedVisibility transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already being tracked"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object v2, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Companion:Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;->getExit-q9NwIk0()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Companion:Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;->getEnter-q9NwIk0()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->box-impl(Ljava/lang/String;)Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    move-result-object v2

    .line 10
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimatedVisibility transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is now tracked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/tooling/animation/ComposeAnimationParserKt;->parseAnimatedVisibility(Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;

    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->unbox-impl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->toCurrentTargetPair-RvB7uIg(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 19
    invoke-virtual {p1, v2, v1, v3, v4}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 20
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 22
    check-cast v0, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifySubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    return-void

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0

    throw p1
.end method

.method public final trackDecayAnimations(Landroidx/compose/animation/core/DecayAnimation;)V
    .locals 2
    .param p1    # Landroidx/compose/animation/core/DecayAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimation<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "decayAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->decayAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    const-string v1, "DecayAnimation"

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->trackAnimation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final trackInfiniteTransition(Landroidx/compose/animation/core/InfiniteTransition;)V
    .locals 2
    .param p1    # Landroidx/compose/animation/core/InfiniteTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "infiniteTransition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->infiniteTransitionSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    const-string v1, "InfiniteTransition"

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->trackAnimation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final trackTargetBasedAnimations(Landroidx/compose/animation/core/TargetBasedAnimation;)V
    .locals 2
    .param p1    # Landroidx/compose/animation/core/TargetBasedAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "**>;)V"
        }
    .end annotation

    const-string/jumbo v0, "targetBasedAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->targetBasedAnimationSubscriber:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;

    const-string v1, "TargetBasedAnimation"

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->trackAnimation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final trackTransition(Landroidx/compose/animation/core/Transition;)V
    .locals 5
    .param p1    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already being tracked"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStates:Ljava/util/HashMap;

    .line 7
    new-instance v2, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    .line 10
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is now tracked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/tooling/animation/ComposeAnimationParserKt;->parse(Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    move-result-object p1

    .line 13
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 14
    check-cast p1, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifySubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    throw p1
.end method

.method public final updateAnimatedVisibilityState(Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "composeAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedAnimatedVisibility:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->animatedVisibilityStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object p1

    .line 4
    check-cast p2, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final updateFromAndToStates(Landroidx/compose/animation/tooling/ComposeAnimation;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Landroidx/compose/animation/tooling/ComposeAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "composeAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroidx/compose/animation/tooling/ComposeAnimation;->getType()Landroidx/compose/animation/tooling/ComposeAnimationType;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/tooling/ComposeAnimationType;->TRANSITION_ANIMATION:Landroidx/compose/animation/tooling/ComposeAnimationType;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackedTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;

    .line 4
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->transitionStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/animation/TransitionComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object p1

    .line 6
    new-instance v2, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;

    invoke-direct {v2, p2, p3}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$TransitionState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
