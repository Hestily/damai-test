.class public final Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final EmptyPointerKeyboardModifiers()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final getAreAnyPressed-aHzCx-E(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final indexOfFirstPressed-aHzCx-E(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x60

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 p0, p0, -0x61

    or-int/2addr p0, v1

    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static final indexOfLastPressed-aHzCx-E(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x60

    ushr-int/lit8 v0, v0, 0x5

    and-int/lit8 p0, p0, -0x61

    or-int/2addr p0, v0

    const/4 v0, -0x1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final isAltGraphPressed-5xRPYO0(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static final isAltPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isBackPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isCapsLockOn-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isCtrlPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isForwardPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isFunctionPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isMetaPressed-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNumLockOn-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPressed-bNIWhpI(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    add-int/2addr p1, v2

    shl-int p1, v1, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_0
    shl-int p1, v1, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->isSecondaryPressed-aHzCx-E(I)Z

    move-result v0

    goto :goto_1

    .line 2
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->isPrimaryPressed-aHzCx-E(I)Z

    move-result v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final isPrimaryPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x21

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isScrollLockOn-5xRPYO0(I)Z
    .locals 1

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSecondaryPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x42

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isShiftPressed-5xRPYO0(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isSymPressed-5xRPYO0(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isTertiaryPressed-aHzCx-E(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
