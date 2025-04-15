.class public final Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/animation/tooling/ComposeAnimation;


# instance fields
.field private final animationObject:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final label:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final states:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Landroidx/compose/animation/tooling/ComposeAnimationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/compose/animation/tooling/ComposeAnimationType;->ANIMATED_VISIBILITY:Landroidx/compose/animation/tooling/ComposeAnimationType;

    iput-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->type:Landroidx/compose/animation/tooling/ComposeAnimationType;

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->animationObject:Landroidx/compose/animation/core/Transition;

    const/4 p1, 0x2

    new-array p1, p1, [Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    .line 4
    sget-object v0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->Companion:Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;->getEnter-q9NwIk0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->box-impl(Ljava/lang/String;)Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState$Companion;->getExit-q9NwIk0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;->box-impl(Ljava/lang/String;)Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->states:Ljava/util/Set;

    .line 5
    iput-object p2, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->label:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getChildTransition$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAnimationObject()Landroidx/compose/animation/core/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->animationObject:Landroidx/compose/animation/core/Transition;

    return-object v0
.end method

.method public bridge synthetic getAnimationObject()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object v0

    return-object v0
.end method

.method public final getChildTransition()Landroidx/compose/animation/core/Transition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->getAnimationObject()Landroidx/compose/animation/core/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTransitions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/animation/core/Transition;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/animation/core/Transition;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getStates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/ui/tooling/animation/AnimatedVisibilityState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->states:Ljava/util/Set;

    return-object v0
.end method

.method public getType()Landroidx/compose/animation/tooling/ComposeAnimationType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimatedVisibilityComposeAnimation;->type:Landroidx/compose/animation/tooling/ComposeAnimationType;

    return-object v0
.end method
