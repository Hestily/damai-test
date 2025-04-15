.class public final Landroidx/compose/ui/graphics/Matrix;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Matrix$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/Matrix$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Perspective0:I = 0x3

.field public static final Perspective1:I = 0x7

.field public static final Perspective2:I = 0xf

.field public static final ScaleX:I = 0x0

.field public static final ScaleY:I = 0x5

.field public static final ScaleZ:I = 0xa

.field public static final SkewX:I = 0x4

.field public static final SkewY:I = 0x1

.field public static final TranslateX:I = 0xc

.field public static final TranslateY:I = 0xd

.field public static final TranslateZ:I = 0xe


# instance fields
.field private final values:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/Matrix$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Matrix$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/Matrix;->Companion:Landroidx/compose/ui/graphics/Matrix$Companion;

    return-void
.end method

.method private synthetic constructor <init>([F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    return-void
.end method

.method public static final synthetic box-impl([F)Landroidx/compose/ui/graphics/Matrix;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/Matrix;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    return-object v0
.end method

.method public static constructor-impl([F)[F
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/16 p0, 0x10

    new-array p0, p0, [F

    .line 1
    fill-array-data p0, :array_0

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl([F)[F

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static equals-impl([FLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/graphics/Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Matrix;->unbox-impl()[F

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0([F[F)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final get-impl([FII)F
    .locals 0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    .line 1
    aget p0, p0, p1

    return p0
.end method

.method public static hashCode-impl([F)I
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    return p0
.end method

.method public static final invert-impl([F)V
    .locals 44

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 2
    aget v3, p0, v2

    const/4 v4, 0x2

    .line 3
    aget v5, p0, v4

    const/4 v6, 0x3

    .line 4
    aget v7, p0, v6

    const/4 v8, 0x4

    .line 5
    aget v9, p0, v8

    const/4 v10, 0x5

    .line 6
    aget v11, p0, v10

    const/4 v12, 0x6

    .line 7
    aget v13, p0, v12

    const/4 v14, 0x7

    .line 8
    aget v15, p0, v14

    const/16 v16, 0x8

    .line 9
    aget v14, p0, v16

    const/16 v17, 0x9

    .line 10
    aget v12, p0, v17

    const/16 v18, 0xa

    .line 11
    aget v19, p0, v18

    const/16 v20, 0xb

    .line 12
    aget v21, p0, v20

    const/16 v22, 0xc

    .line 13
    aget v10, p0, v22

    const/16 v23, 0xd

    .line 14
    aget v24, p0, v23

    const/16 v25, 0xe

    .line 15
    aget v26, p0, v25

    const/16 v27, 0xf

    .line 16
    aget v28, p0, v27

    mul-float v29, v1, v11

    mul-float v30, v3, v9

    sub-float v29, v29, v30

    mul-float v30, v1, v13

    mul-float v31, v5, v9

    sub-float v30, v30, v31

    mul-float v31, v1, v15

    mul-float v32, v7, v9

    sub-float v31, v31, v32

    mul-float v32, v3, v13

    mul-float v33, v5, v11

    sub-float v32, v32, v33

    mul-float v33, v3, v15

    mul-float v34, v7, v11

    sub-float v33, v33, v34

    mul-float v34, v5, v15

    mul-float v35, v7, v13

    sub-float v34, v34, v35

    mul-float v35, v14, v24

    mul-float v36, v12, v10

    sub-float v35, v35, v36

    mul-float v36, v14, v26

    mul-float v37, v19, v10

    sub-float v36, v36, v37

    mul-float v37, v14, v28

    mul-float v38, v21, v10

    sub-float v37, v37, v38

    mul-float v38, v12, v26

    mul-float v39, v19, v24

    sub-float v38, v38, v39

    mul-float v39, v12, v28

    mul-float v40, v21, v24

    sub-float v39, v39, v40

    mul-float v40, v19, v28

    mul-float v41, v21, v26

    sub-float v40, v40, v41

    mul-float v41, v29, v40

    mul-float v42, v30, v39

    sub-float v41, v41, v42

    mul-float v42, v31, v38

    add-float v41, v41, v42

    mul-float v42, v32, v37

    add-float v41, v41, v42

    mul-float v42, v33, v36

    sub-float v41, v41, v42

    mul-float v42, v34, v35

    add-float v41, v41, v42

    const/16 v42, 0x0

    cmpg-float v42, v41, v42

    if-nez v42, :cond_0

    const/16 v42, 0x1

    goto :goto_0

    :cond_0
    const/16 v42, 0x0

    :goto_0
    if-eqz v42, :cond_1

    return-void

    :cond_1
    const/high16 v42, 0x3f800000    # 1.0f

    div-float v42, v42, v41

    mul-float v41, v11, v40

    mul-float v43, v13, v39

    sub-float v41, v41, v43

    mul-float v43, v15, v38

    add-float v41, v41, v43

    mul-float v41, v41, v42

    .line 17
    aput v41, p0, v0

    neg-float v0, v3

    mul-float v0, v0, v40

    mul-float v41, v5, v39

    add-float v0, v0, v41

    mul-float v41, v7, v38

    sub-float v0, v0, v41

    mul-float v0, v0, v42

    .line 18
    aput v0, p0, v2

    mul-float v0, v24, v34

    mul-float v2, v26, v33

    sub-float/2addr v0, v2

    mul-float v2, v28, v32

    add-float/2addr v0, v2

    mul-float v0, v0, v42

    .line 19
    aput v0, p0, v4

    neg-float v0, v12

    mul-float v0, v0, v34

    mul-float v2, v19, v33

    add-float/2addr v0, v2

    mul-float v2, v21, v32

    sub-float/2addr v0, v2

    mul-float v0, v0, v42

    .line 20
    aput v0, p0, v6

    neg-float v0, v9

    mul-float v2, v0, v40

    mul-float v4, v13, v37

    add-float/2addr v2, v4

    mul-float v4, v15, v36

    sub-float/2addr v2, v4

    mul-float v2, v2, v42

    .line 21
    aput v2, p0, v8

    mul-float v40, v40, v1

    mul-float v2, v5, v37

    sub-float v40, v40, v2

    mul-float v2, v7, v36

    add-float v40, v40, v2

    mul-float v40, v40, v42

    const/4 v2, 0x5

    .line 22
    aput v40, p0, v2

    neg-float v2, v10

    mul-float v4, v2, v34

    mul-float v6, v26, v31

    add-float/2addr v4, v6

    mul-float v6, v28, v30

    sub-float/2addr v4, v6

    mul-float v4, v4, v42

    const/4 v6, 0x6

    .line 23
    aput v4, p0, v6

    mul-float v34, v34, v14

    mul-float v4, v19, v31

    sub-float v34, v34, v4

    mul-float v4, v21, v30

    add-float v34, v34, v4

    mul-float v34, v34, v42

    const/4 v4, 0x7

    .line 24
    aput v34, p0, v4

    mul-float v9, v9, v39

    mul-float v4, v11, v37

    sub-float/2addr v9, v4

    mul-float v15, v15, v35

    add-float/2addr v9, v15

    mul-float v9, v9, v42

    .line 25
    aput v9, p0, v16

    neg-float v4, v1

    mul-float v4, v4, v39

    mul-float v37, v37, v3

    add-float v4, v4, v37

    mul-float v7, v7, v35

    sub-float/2addr v4, v7

    mul-float v4, v4, v42

    .line 26
    aput v4, p0, v17

    mul-float v10, v10, v33

    mul-float v4, v24, v31

    sub-float/2addr v10, v4

    mul-float v28, v28, v29

    add-float v10, v10, v28

    mul-float v10, v10, v42

    .line 27
    aput v10, p0, v18

    neg-float v4, v14

    mul-float v4, v4, v33

    mul-float v31, v31, v12

    add-float v4, v4, v31

    mul-float v21, v21, v29

    sub-float v4, v4, v21

    mul-float v4, v4, v42

    .line 28
    aput v4, p0, v20

    mul-float v0, v0, v38

    mul-float v11, v11, v36

    add-float/2addr v0, v11

    mul-float v13, v13, v35

    sub-float/2addr v0, v13

    mul-float v0, v0, v42

    .line 29
    aput v0, p0, v22

    mul-float v1, v1, v38

    mul-float v3, v3, v36

    sub-float/2addr v1, v3

    mul-float v5, v5, v35

    add-float/2addr v1, v5

    mul-float v1, v1, v42

    .line 30
    aput v1, p0, v23

    mul-float v2, v2, v32

    mul-float v24, v24, v30

    add-float v2, v2, v24

    mul-float v26, v26, v29

    sub-float v2, v2, v26

    mul-float v2, v2, v42

    .line 31
    aput v2, p0, v25

    mul-float v14, v14, v32

    mul-float v12, v12, v30

    sub-float/2addr v14, v12

    mul-float v19, v19, v29

    add-float v14, v14, v19

    mul-float v14, v14, v42

    .line 32
    aput v14, p0, v27

    return-void
.end method

.method public static final map-MK-Hz9U([FJ)J
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 2
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    const/4 p2, 0x3

    .line 3
    aget p2, p0, p2

    mul-float p2, p2, v0

    const/4 v1, 0x7

    aget v1, p0, v1

    mul-float v1, v1, p1

    add-float/2addr p2, v1

    const/16 v1, 0xf

    aget v1, p0, v1

    add-float/2addr p2, v1

    const/4 v1, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    aget p2, p0, v3

    mul-float p2, p2, v0

    const/4 v3, 0x4

    aget v3, p0, v3

    mul-float v3, v3, p1

    add-float/2addr p2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    add-float/2addr p2, v3

    mul-float p2, p2, v2

    .line 6
    aget v1, p0, v1

    mul-float v1, v1, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    const/16 p1, 0xd

    aget p0, p0, p1

    add-float/2addr v1, p0

    mul-float v2, v2, v1

    .line 7
    invoke-static {p2, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final map-impl([FLandroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 11
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v4

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p1

    invoke-static {v6, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide p0

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 8
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 9
    new-instance p1, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {p1, v6, v7, v8, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object p1
.end method

.method public static final map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V
    .locals 10
    .param p1    # Landroidx/compose/ui/geometry/MutableRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v2

    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v4

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v6

    .line 14
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 16
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    return-void
.end method

.method public static final reset-impl([F)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    if-ne v1, v3, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    .line 1
    aput v4, p0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final rotateX-impl([FF)V
    .locals 20

    move/from16 v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x1

    .line 3
    aget v3, p0, v1

    const/4 v4, 0x2

    .line 4
    aget v5, p0, v4

    mul-float v6, v3, v2

    mul-float v7, v5, v0

    sub-float/2addr v6, v7

    mul-float v3, v3, v0

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    const/4 v5, 0x5

    .line 5
    aget v7, p0, v5

    const/4 v8, 0x6

    .line 6
    aget v9, p0, v8

    mul-float v10, v7, v2

    mul-float v11, v9, v0

    sub-float/2addr v10, v11

    mul-float v7, v7, v0

    mul-float v9, v9, v2

    add-float/2addr v7, v9

    const/16 v9, 0x9

    .line 7
    aget v11, p0, v9

    const/16 v12, 0xa

    .line 8
    aget v13, p0, v12

    mul-float v14, v11, v2

    mul-float v15, v13, v0

    sub-float/2addr v14, v15

    mul-float v11, v11, v0

    mul-float v13, v13, v2

    add-float/2addr v11, v13

    const/16 v13, 0xd

    .line 9
    aget v15, p0, v13

    const/16 v16, 0xe

    .line 10
    aget v17, p0, v16

    mul-float v18, v15, v2

    mul-float v19, v17, v0

    sub-float v18, v18, v19

    mul-float v15, v15, v0

    mul-float v17, v17, v2

    add-float v15, v15, v17

    .line 11
    aput v6, p0, v1

    .line 12
    aput v3, p0, v4

    .line 13
    aput v10, p0, v5

    .line 14
    aput v7, p0, v8

    .line 15
    aput v14, p0, v9

    .line 16
    aput v11, p0, v12

    .line 17
    aput v18, p0, v13

    .line 18
    aput v15, p0, v16

    return-void
.end method

.method public static final rotateY-impl([FF)V
    .locals 20

    move/from16 v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 3
    aget v3, p0, v1

    const/4 v4, 0x2

    .line 4
    aget v5, p0, v4

    mul-float v6, v3, v2

    mul-float v7, v5, v0

    add-float/2addr v6, v7

    neg-float v3, v3

    mul-float v3, v3, v0

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    const/4 v5, 0x4

    .line 5
    aget v7, p0, v5

    const/4 v8, 0x6

    .line 6
    aget v9, p0, v8

    mul-float v10, v7, v2

    mul-float v11, v9, v0

    add-float/2addr v10, v11

    neg-float v7, v7

    mul-float v7, v7, v0

    mul-float v9, v9, v2

    add-float/2addr v7, v9

    const/16 v9, 0x8

    .line 7
    aget v11, p0, v9

    const/16 v12, 0xa

    .line 8
    aget v13, p0, v12

    mul-float v14, v11, v2

    mul-float v15, v13, v0

    add-float/2addr v14, v15

    neg-float v11, v11

    mul-float v11, v11, v0

    mul-float v13, v13, v2

    add-float/2addr v11, v13

    const/16 v13, 0xc

    .line 9
    aget v15, p0, v13

    const/16 v16, 0xe

    .line 10
    aget v17, p0, v16

    mul-float v18, v15, v2

    mul-float v19, v17, v0

    add-float v18, v18, v19

    neg-float v15, v15

    mul-float v15, v15, v0

    mul-float v17, v17, v2

    add-float v15, v15, v17

    .line 11
    aput v6, p0, v1

    .line 12
    aput v3, p0, v4

    .line 13
    aput v10, p0, v5

    .line 14
    aput v7, p0, v8

    .line 15
    aput v14, p0, v9

    .line 16
    aput v11, p0, v12

    .line 17
    aput v18, p0, v13

    .line 18
    aput v15, p0, v16

    return-void
.end method

.method public static final rotateZ-impl([FF)V
    .locals 20

    move/from16 v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 3
    aget v3, p0, v1

    const/4 v4, 0x4

    .line 4
    aget v5, p0, v4

    mul-float v6, v2, v3

    mul-float v7, v0, v5

    add-float/2addr v6, v7

    neg-float v7, v0

    mul-float v3, v3, v7

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    const/4 v5, 0x1

    .line 5
    aget v8, p0, v5

    const/4 v9, 0x5

    .line 6
    aget v10, p0, v9

    mul-float v11, v2, v8

    mul-float v12, v0, v10

    add-float/2addr v11, v12

    mul-float v8, v8, v7

    mul-float v10, v10, v2

    add-float/2addr v8, v10

    const/4 v10, 0x2

    .line 7
    aget v12, p0, v10

    const/4 v13, 0x6

    .line 8
    aget v14, p0, v13

    mul-float v15, v2, v12

    mul-float v16, v0, v14

    add-float v15, v15, v16

    mul-float v12, v12, v7

    mul-float v14, v14, v2

    add-float/2addr v12, v14

    const/4 v14, 0x3

    .line 9
    aget v16, p0, v14

    const/16 v17, 0x7

    .line 10
    aget v18, p0, v17

    mul-float v19, v2, v16

    mul-float v0, v0, v18

    add-float v19, v19, v0

    mul-float v7, v7, v16

    mul-float v2, v2, v18

    add-float/2addr v7, v2

    .line 11
    aput v6, p0, v1

    .line 12
    aput v11, p0, v5

    .line 13
    aput v15, p0, v10

    .line 14
    aput v19, p0, v14

    .line 15
    aput v3, p0, v4

    .line 16
    aput v8, p0, v9

    .line 17
    aput v12, p0, v13

    .line 18
    aput v7, p0, v17

    return-void
.end method

.method public static final scale-impl([FFFF)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    mul-float v1, v1, p1

    .line 2
    aput v1, p0, v0

    const/4 v0, 0x1

    .line 3
    aget v1, p0, v0

    mul-float v1, v1, p1

    .line 4
    aput v1, p0, v0

    const/4 v0, 0x2

    .line 5
    aget v1, p0, v0

    mul-float v1, v1, p1

    .line 6
    aput v1, p0, v0

    const/4 v0, 0x3

    .line 7
    aget v1, p0, v0

    mul-float v1, v1, p1

    .line 8
    aput v1, p0, v0

    const/4 p1, 0x4

    .line 9
    aget v0, p0, p1

    mul-float v0, v0, p2

    .line 10
    aput v0, p0, p1

    const/4 p1, 0x5

    .line 11
    aget v0, p0, p1

    mul-float v0, v0, p2

    .line 12
    aput v0, p0, p1

    const/4 p1, 0x6

    .line 13
    aget v0, p0, p1

    mul-float v0, v0, p2

    .line 14
    aput v0, p0, p1

    const/4 p1, 0x7

    .line 15
    aget v0, p0, p1

    mul-float v0, v0, p2

    .line 16
    aput v0, p0, p1

    const/16 p1, 0x8

    .line 17
    aget p2, p0, p1

    mul-float p2, p2, p3

    .line 18
    aput p2, p0, p1

    const/16 p1, 0x9

    .line 19
    aget p2, p0, p1

    mul-float p2, p2, p3

    .line 20
    aput p2, p0, p1

    const/16 p1, 0xa

    .line 21
    aget p2, p0, p1

    mul-float p2, p2, p3

    .line 22
    aput p2, p0, p1

    const/16 p1, 0xb

    .line 23
    aget p2, p0, p1

    mul-float p2, p2, p3

    .line 24
    aput p2, p0, p1

    return-void
.end method

.method public static synthetic scale-impl$default([FFFFILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/Matrix;->scale-impl([FFFF)V

    return-void
.end method

.method public static final set-impl([FIIF)V
    .locals 0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    .line 1
    aput p3, p0, p1

    return-void
.end method

.method public static final setFrom-58bKbWc([F[F)V
    .locals 2
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1
    aget v1, p1, v0

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final timesAssign-58bKbWc([F[F)V
    .locals 21
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "m"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v3

    const/4 v4, 0x1

    .line 2
    invoke-static {v0, v2, v1, v4}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v5

    const/4 v6, 0x2

    .line 3
    invoke-static {v0, v2, v1, v6}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v7

    const/4 v8, 0x3

    .line 4
    invoke-static {v0, v2, v1, v8}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v9

    .line 5
    invoke-static {v0, v4, v1, v2}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v10

    .line 6
    invoke-static {v0, v4, v1, v4}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v11

    .line 7
    invoke-static {v0, v4, v1, v6}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v12

    .line 8
    invoke-static {v0, v4, v1, v8}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v13

    .line 9
    invoke-static {v0, v6, v1, v2}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v14

    .line 10
    invoke-static {v0, v6, v1, v4}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v15

    .line 11
    invoke-static {v0, v6, v1, v6}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v16

    .line 12
    invoke-static {v0, v6, v1, v8}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v17

    .line 13
    invoke-static {v0, v8, v1, v2}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v18

    .line 14
    invoke-static {v0, v8, v1, v4}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v19

    .line 15
    invoke-static {v0, v8, v1, v6}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v20

    .line 16
    invoke-static {v0, v8, v1, v8}, Landroidx/compose/ui/graphics/MatrixKt;->access$dot-p89u6pk([FI[FI)F

    move-result v1

    .line 17
    aput v3, v0, v2

    .line 18
    aput v5, v0, v4

    .line 19
    aput v7, v0, v6

    .line 20
    aput v9, v0, v8

    const/4 v2, 0x4

    .line 21
    aput v10, v0, v2

    const/4 v2, 0x5

    .line 22
    aput v11, v0, v2

    const/4 v2, 0x6

    .line 23
    aput v12, v0, v2

    const/4 v2, 0x7

    .line 24
    aput v13, v0, v2

    const/16 v2, 0x8

    .line 25
    aput v14, v0, v2

    const/16 v2, 0x9

    .line 26
    aput v15, v0, v2

    const/16 v2, 0xa

    .line 27
    aput v16, v0, v2

    const/16 v2, 0xb

    .line 28
    aput v17, v0, v2

    const/16 v2, 0xc

    .line 29
    aput v18, v0, v2

    const/16 v2, 0xd

    .line 30
    aput v19, v0, v2

    const/16 v2, 0xe

    .line 31
    aput v20, v0, v2

    const/16 v2, 0xf

    .line 32
    aput v1, v0, v2

    return-void
.end method

.method public static toString-impl([F)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2
    aget v1, p0, v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 4
    aget v2, p0, v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 6
    aget v2, p0, v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 8
    aget v2, p0, v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 10
    aget v3, p0, v3

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 12
    aget v3, p0, v3

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    .line 14
    aget v3, p0, v3

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    .line 16
    aget v3, p0, v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    .line 18
    aget v3, p0, v3

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 20
    aget v3, p0, v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 22
    aget v3, p0, v3

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 24
    aget v3, p0, v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 26
    aget v2, p0, v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    .line 28
    aget v2, p0, v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    .line 30
    aget v2, p0, v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    .line 32
    aget p0, p0, v1

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final translate-impl([FFFF)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    aget v0, p0, v0

    mul-float v0, v0, p1

    const/4 v1, 0x4

    .line 2
    aget v1, p0, v1

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    .line 3
    aget v1, p0, v1

    mul-float v1, v1, p3

    add-float/2addr v0, v1

    const/16 v1, 0xc

    .line 4
    aget v2, p0, v1

    add-float/2addr v0, v2

    const/4 v2, 0x1

    .line 5
    aget v2, p0, v2

    mul-float v2, v2, p1

    const/4 v3, 0x5

    .line 6
    aget v3, p0, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    const/16 v3, 0x9

    .line 7
    aget v3, p0, v3

    mul-float v3, v3, p3

    add-float/2addr v2, v3

    const/16 v3, 0xd

    .line 8
    aget v4, p0, v3

    add-float/2addr v2, v4

    const/4 v4, 0x2

    .line 9
    aget v4, p0, v4

    mul-float v4, v4, p1

    const/4 v5, 0x6

    .line 10
    aget v5, p0, v5

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    const/16 v5, 0xa

    .line 11
    aget v5, p0, v5

    mul-float v5, v5, p3

    add-float/2addr v4, v5

    const/16 v5, 0xe

    .line 12
    aget v6, p0, v5

    add-float/2addr v4, v6

    const/4 v6, 0x3

    .line 13
    aget v6, p0, v6

    mul-float v6, v6, p1

    const/4 p1, 0x7

    .line 14
    aget p1, p0, p1

    mul-float p1, p1, p2

    add-float/2addr v6, p1

    const/16 p1, 0xb

    .line 15
    aget p1, p0, p1

    mul-float p1, p1, p3

    add-float/2addr v6, p1

    const/16 p1, 0xf

    .line 16
    aget p2, p0, p1

    add-float/2addr v6, p2

    .line 17
    aput v0, p0, v1

    .line 18
    aput v2, p0, v3

    .line 19
    aput v4, p0, v5

    .line 20
    aput v6, p0, p1

    return-void
.end method

.method public static synthetic translate-impl$default([FFFFILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 1
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Matrix;->equals-impl([FLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValues()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->hashCode-impl([F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->toString-impl([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()[F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    return-object v0
.end method
