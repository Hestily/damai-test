.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/EasingFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v3, p1, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    cmpg-float v3, p1, v4

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    cmpg-float v1, v1, p1

    if-gtz v1, :cond_4

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const/high16 v1, 0x41320000    # 11.125f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v5, 0x40000000    # 2.0f

    const-wide v6, 0x3ff657184ae74487L    # 1.3962634015954636

    if-eqz v0, :cond_5

    float-to-double v4, v5

    mul-float p1, p1, v2

    sub-float v0, p1, v3

    float-to-double v2, v0

    .line 1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, v0

    sub-float/2addr p1, v1

    float-to-double v0, p1

    mul-double v0, v0, v6

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    neg-double v0, v2

    div-double/2addr v0, v4

    double-to-float v1, v0

    goto :goto_3

    :cond_5
    float-to-double v8, v5

    const/high16 v0, -0x3e600000    # -20.0f

    mul-float v0, v0, p1

    add-float/2addr v0, v3

    float-to-double v10, v0

    .line 3
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v0, v10

    float-to-double v10, v0

    mul-float p1, p1, v2

    sub-float/2addr p1, v1

    float-to-double v0, p1

    mul-double v0, v0, v6

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v10, v10, v0

    div-double/2addr v10, v8

    double-to-float p1, v10

    add-float v1, p1, v4

    :goto_3
    return v1
.end method
