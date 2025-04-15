.class public final synthetic Landroidx/compose/ui/layout/MeasureScope$-CC;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static a(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p0, "_this"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "alignmentLines"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "placementBlock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/MeasureScope$layout$1;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/layout/MeasureScope$layout$1;-><init>(IILjava/util/Map;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static synthetic b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope$-CC;->a(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/layout/MeasureScope;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ltb/ex0;->a(Landroidx/compose/ui/unit/Density;J)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/compose/ui/layout/MeasureScope;F)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->b(Landroidx/compose/ui/unit/Density;F)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroidx/compose/ui/layout/MeasureScope;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ltb/ex0;->c(Landroidx/compose/ui/unit/Density;J)F

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroidx/compose/ui/layout/MeasureScope;F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->d(Landroidx/compose/ui/unit/Density;F)F

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroidx/compose/ui/layout/MeasureScope;I)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->e(Landroidx/compose/ui/unit/Density;I)F

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroidx/compose/ui/layout/MeasureScope;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ltb/ex0;->f(Landroidx/compose/ui/unit/Density;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic i(Landroidx/compose/ui/layout/MeasureScope;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ltb/ex0;->g(Landroidx/compose/ui/unit/Density;J)F

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroidx/compose/ui/layout/MeasureScope;F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->h(Landroidx/compose/ui/unit/Density;F)F

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->i(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/compose/ui/layout/MeasureScope;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ltb/ex0;->j(Landroidx/compose/ui/unit/Density;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic m(Landroidx/compose/ui/layout/MeasureScope;F)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->k(Landroidx/compose/ui/unit/Density;F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic n(Landroidx/compose/ui/layout/MeasureScope;F)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->l(Landroidx/compose/ui/unit/Density;F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic o(Landroidx/compose/ui/layout/MeasureScope;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltb/ex0;->m(Landroidx/compose/ui/unit/Density;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic p(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 2
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
