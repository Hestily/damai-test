.class public final synthetic Landroidx/compose/foundation/layout/a;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static a(Landroidx/compose/foundation/layout/SideCalculator;FF)F
    .locals 0
    .param p0, "_this"    # Landroidx/compose/foundation/layout/SideCalculator;

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->motionOf(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    return p1
.end method

.method public static b(Landroidx/compose/foundation/layout/SideCalculator;FF)F
    .locals 0
    .param p0, "_this"    # Landroidx/compose/foundation/layout/SideCalculator;

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->motionOf(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    return p1
.end method
