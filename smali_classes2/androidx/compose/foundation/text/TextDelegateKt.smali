.class public final Landroidx/compose/foundation/text/TextDelegateKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final ceilToIntPx(F)I
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method
