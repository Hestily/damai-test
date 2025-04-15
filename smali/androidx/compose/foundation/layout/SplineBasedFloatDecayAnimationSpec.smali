.class final Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/animation/core/FloatDecayAnimationSpec;


# instance fields
.field private final magicPhysicalCoefficient:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p1

    const v0, 0x43c10b3d

    mul-float v0, v0, p1

    const/high16 p1, 0x43200000    # 160.0f

    mul-float v0, v0, p1

    const p1, 0x3f570a3d    # 0.84f

    mul-float v0, v0, p1

    iput v0, p0, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->magicPhysicalCoefficient:F

    return-void
.end method

.method private final getSplineDeceleration(F)D
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;->INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

    .line 2
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getPlatformFlingScrollFriction$p()F

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->magicPhysicalCoefficient:F

    mul-float v1, v1, v2

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidFlingSpline;->deceleration(FF)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final flingDistance(F)F
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 2
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getPlatformFlingScrollFriction$p()F

    move-result v2

    iget v3, p0, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->magicPhysicalCoefficient:F

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 3
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getDecelerationRate$p()D

    move-result-wide v4

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getDecelMinusOne$p()D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    double-to-float v0, v2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float v0, v0, p1

    return v0
.end method

.method public getAbsVelocityThreshold()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDurationNanos(FF)J
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getSplineDeceleration(F)D

    move-result-wide p1

    .line 2
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getDecelMinusOne$p()D

    move-result-wide v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double p1, p1, v0

    double-to-long p1, p1

    return-wide p1
.end method

.method public getTargetValue(FF)F
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    move-result p2

    add-float/2addr p1, p2

    return p1
.end method

.method public getValueFromNanos(JFF)F
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getDurationNanos(FF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    :goto_0
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    move-result p2

    .line 3
    sget-object p4, Landroidx/compose/foundation/layout/AndroidFlingSpline;->INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

    invoke-virtual {p4, p1}, Landroidx/compose/foundation/layout/AndroidFlingSpline;->flingPosition-LfoxSSI(F)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->getDistanceCoefficient-impl(J)F

    move-result p1

    mul-float p2, p2, p1

    add-float/2addr p3, p2

    return p3
.end method

.method public getVelocityFromNanos(JFF)F
    .locals 4

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getDurationNanos(FF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    :goto_0
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    move-result p2

    .line 3
    sget-object p3, Landroidx/compose/foundation/layout/AndroidFlingSpline;->INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

    invoke-virtual {p3, p1}, Landroidx/compose/foundation/layout/AndroidFlingSpline;->flingPosition-LfoxSSI(F)J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->getVelocityCoefficient-impl(J)F

    move-result p1

    mul-float p1, p1, p2

    long-to-float p2, v0

    div-float/2addr p1, p2

    const p2, 0x4e6e6b28    # 1.0E9f

    mul-float p1, p1, p2

    return p1
.end method
