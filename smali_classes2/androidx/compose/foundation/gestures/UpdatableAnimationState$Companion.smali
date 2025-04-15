.class final Landroidx/compose/foundation/gestures/UpdatableAnimationState$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/UpdatableAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/UpdatableAnimationState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRebasableAnimationSpec()Landroidx/compose/animation/core/VectorizedSpringSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/VectorizedSpringSpec<",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->access$getRebasableAnimationSpec$cp()Landroidx/compose/animation/core/VectorizedSpringSpec;

    move-result-object v0

    return-object v0
.end method

.method public final getZeroVector()Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->access$getZeroVector$cp()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object v0

    return-object v0
.end method

.method public final isZeroish(F)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
