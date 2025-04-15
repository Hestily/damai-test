.class public final Landroidx/compose/animation/core/FloatDecayAnimationSpecKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final ExponentialDecayFriction:F = -4.2f


# direct methods
.method public static final createAnimation(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/Animation;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FloatDecayAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FloatDecayAnimationSpec;",
            "FF)",
            "Landroidx/compose/animation/core/Animation<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/AnimationKt;->DecayAnimation(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/DecayAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createAnimation$default(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FFILjava/lang/Object;)Landroidx/compose/animation/core/Animation;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/FloatDecayAnimationSpecKt;->createAnimation(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/Animation;

    move-result-object p0

    return-object p0
.end method
