.class public final Landroidx/compose/ui/graphics/colorspace/Lab;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Lab$Companion;
    }
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final D:F = 0.20689656f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Lab;->Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getLab-xdoWZVw()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 14
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v3

    aget v3, v3, v0

    div-float/2addr v1, v3

    const/4 v3, 0x1

    .line 2
    aget v4, p1, v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v5

    aget v5, v5, v3

    div-float/2addr v4, v5

    const/4 v5, 0x2

    .line 3
    aget v6, p1, v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v2

    aget v2, v2, v5

    div-float/2addr v6, v2

    const v2, 0x3eaaaaab

    const v7, 0x3e0d3dcb

    const v8, 0x40f92f68

    const v9, 0x3c111aa7

    cmpl-float v10, v1, v9

    if-lez v10, :cond_0

    float-to-double v10, v1

    float-to-double v12, v2

    .line 4
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v1, v10

    goto :goto_0

    :cond_0
    mul-float v1, v1, v8

    add-float/2addr v1, v7

    :goto_0
    cmpl-float v10, v4, v9

    if-lez v10, :cond_1

    float-to-double v10, v4

    float-to-double v12, v2

    .line 5
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v4, v10

    goto :goto_1

    :cond_1
    mul-float v4, v4, v8

    add-float/2addr v4, v7

    :goto_1
    cmpl-float v9, v6, v9

    if-lez v9, :cond_2

    float-to-double v6, v6

    float-to-double v8, v2

    .line 6
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v2, v6

    goto :goto_2

    :cond_2
    mul-float v6, v6, v8

    add-float v2, v6, v7

    :goto_2
    const/high16 v6, 0x42e80000    # 116.0f

    mul-float v6, v6, v4

    const/high16 v7, 0x41800000    # 16.0f

    sub-float/2addr v6, v7

    const/high16 v7, 0x43fa0000    # 500.0f

    sub-float/2addr v1, v4

    mul-float v1, v1, v7

    const/high16 v7, 0x43480000    # 200.0f

    sub-float/2addr v4, v2

    mul-float v4, v4, v7

    const/4 v2, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    .line 7
    invoke-static {v6, v2, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    aput v2, p1, v0

    const/high16 v0, -0x3d000000    # -128.0f

    const/high16 v2, 0x43000000    # 128.0f

    .line 8
    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    aput v1, p1, v3

    .line 9
    invoke-static {v4, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    aput v0, p1, v5

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43000000    # 128.0f

    :goto_0
    return p1
.end method

.method public getMinValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x3d000000    # -128.0f

    :goto_0
    return p1
.end method

.method public isWideGamut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toXy$ui_graphics_release(FFF)J
    .locals 4

    const/4 p2, 0x0

    const/high16 p3, 0x42c80000    # 100.0f

    .line 1
    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    const/high16 p3, -0x3d000000    # -128.0f

    const/high16 v0, 0x43000000    # 128.0f

    .line 2
    invoke-static {p1, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    const/high16 p3, 0x41800000    # 16.0f

    add-float/2addr p2, p3

    const/high16 p3, 0x42e80000    # 116.0f

    div-float/2addr p2, p3

    const p3, 0x3b03126f    # 0.002f

    mul-float p1, p1, p3

    add-float/2addr p1, p2

    const p3, 0x3e0d3dcb

    const v0, 0x3e038027

    const v1, 0x3e53dcb1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    mul-float v2, p1, p1

    mul-float v2, v2, p1

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p3

    mul-float v2, p1, v0

    :goto_0
    cmpl-float p1, p2, v1

    if-lez p1, :cond_1

    mul-float p1, p2, p2

    mul-float p1, p1, p2

    goto :goto_1

    :cond_1
    sub-float/2addr p2, p3

    mul-float p1, p2, v0

    .line 3
    :goto_1
    sget-object p2, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p3

    const/4 v0, 0x0

    aget p3, p3, v0

    mul-float v2, v2, p3

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p2

    const/4 p3, 0x1

    aget p2, p2, p3

    mul-float p1, p1, p2

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    int-to-long p2, p2

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long p1, p2, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public toXyz([F)[F
    .locals 10
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x1

    .line 2
    aget v2, p1, v1

    const/high16 v3, -0x3d000000    # -128.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    aput v2, p1, v1

    const/4 v2, 0x2

    .line 3
    aget v5, p1, v2

    invoke-static {v5, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    aput v3, p1, v2

    .line 4
    aget v3, p1, v0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    .line 5
    aget v4, p1, v1

    const v5, 0x3b03126f    # 0.002f

    mul-float v4, v4, v5

    add-float/2addr v4, v3

    .line 6
    aget v5, p1, v2

    const v6, 0x3ba3d70a    # 0.005f

    mul-float v5, v5, v6

    sub-float v5, v3, v5

    const v6, 0x3e0d3dcb

    const v7, 0x3e038027

    const v8, 0x3e53dcb1

    cmpl-float v9, v4, v8

    if-lez v9, :cond_0

    mul-float v9, v4, v4

    mul-float v9, v9, v4

    goto :goto_0

    :cond_0
    sub-float/2addr v4, v6

    mul-float v9, v4, v7

    :goto_0
    cmpl-float v4, v3, v8

    if-lez v4, :cond_1

    mul-float v4, v3, v3

    mul-float v4, v4, v3

    goto :goto_1

    :cond_1
    sub-float/2addr v3, v6

    mul-float v4, v3, v7

    :goto_1
    cmpl-float v3, v5, v8

    if-lez v3, :cond_2

    mul-float v3, v5, v5

    mul-float v3, v3, v5

    goto :goto_2

    :cond_2
    sub-float/2addr v5, v6

    mul-float v3, v5, v7

    .line 7
    :goto_2
    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v6

    aget v6, v6, v0

    mul-float v9, v9, v6

    aput v9, p1, v0

    .line 8
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v0

    aget v0, v0, v1

    mul-float v4, v4, v0

    aput v4, p1, v1

    .line 9
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float v3, v3, v0

    aput v3, p1, v2

    return-object p1
.end method

.method public toZ$ui_graphics_release(FFF)F
    .locals 1

    const/4 p2, 0x0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1
    invoke-static {p1, p2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    const/high16 p2, -0x3d000000    # -128.0f

    const/high16 v0, 0x43000000    # 128.0f

    .line 2
    invoke-static {p3, p2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    const/high16 p3, 0x41800000    # 16.0f

    add-float/2addr p1, p3

    const/high16 p3, 0x42e80000    # 116.0f

    div-float/2addr p1, p3

    const p3, 0x3ba3d70a    # 0.005f

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    const p2, 0x3e53dcb1

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    mul-float p2, p1, p1

    mul-float p2, p2, p1

    goto :goto_0

    :cond_0
    const p2, 0x3e038027

    const p3, 0x3e0d3dcb

    sub-float/2addr p1, p3

    mul-float p2, p2, p1

    .line 3
    :goto_0
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p1

    const/4 p3, 0x2

    aget p1, p1, p3

    mul-float p2, p2, p1

    return p2
.end method

.method public xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 8
    .param p5    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorSpace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    div-float/2addr p1, v1

    .line 2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    div-float/2addr p2, v1

    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    div-float/2addr p3, v0

    const v0, 0x3eaaaaab

    const v1, 0x3e0d3dcb

    const v2, 0x40f92f68

    const v3, 0x3c111aa7

    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    float-to-double v4, p1

    float-to-double v6, v0

    .line 4
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p1, v4

    goto :goto_0

    :cond_0
    mul-float p1, p1, v2

    add-float/2addr p1, v1

    :goto_0
    cmpl-float v4, p2, v3

    if-lez v4, :cond_1

    float-to-double v4, p2

    float-to-double v6, v0

    .line 5
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p2, v4

    goto :goto_1

    :cond_1
    mul-float p2, p2, v2

    add-float/2addr p2, v1

    :goto_1
    cmpl-float v3, p3, v3

    if-lez v3, :cond_2

    float-to-double v1, p3

    float-to-double v3, v0

    .line 6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    goto :goto_2

    :cond_2
    mul-float p3, p3, v2

    add-float/2addr p3, v1

    :goto_2
    const/high16 v0, 0x42e80000    # 116.0f

    mul-float v0, v0, p2

    const/high16 v1, 0x41800000    # 16.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    sub-float/2addr p1, p2

    mul-float p1, p1, v1

    const/high16 v1, 0x43480000    # 200.0f

    sub-float/2addr p2, p3

    mul-float p2, p2, v1

    const/4 p3, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 7
    invoke-static {v0, p3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p3

    const/high16 v0, -0x3d000000    # -128.0f

    const/high16 v1, 0x43000000    # 128.0f

    .line 8
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 9
    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    .line 10
    invoke-static {p3, p1, p2, p4, p5}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p1

    return-wide p1
.end method
