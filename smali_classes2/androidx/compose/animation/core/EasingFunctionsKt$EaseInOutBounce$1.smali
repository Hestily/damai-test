.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;
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
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 8

    float-to-double v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v0, v5

    if-gez v7, :cond_0

    int-to-float v0, v3

    .line 1
    invoke-static {}, Landroidx/compose/animation/core/EasingFunctionsKt;->getEaseOutBounce()Landroidx/compose/animation/core/Easing;

    move-result-object v1

    mul-float p1, p1, v4

    sub-float/2addr v2, p1

    invoke-interface {v1, v2}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    int-to-float v0, v3

    .line 2
    invoke-static {}, Landroidx/compose/animation/core/EasingFunctionsKt;->getEaseOutBounce()Landroidx/compose/animation/core/Easing;

    move-result-object v1

    mul-float p1, p1, v4

    sub-float/2addr p1, v2

    invoke-interface {v1, p1}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p1

    add-float/2addr v0, p1

    :goto_0
    div-float/2addr v0, v4

    return v0
.end method
