.class public final Landroidx/compose/foundation/BasicMarqueeKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final DefaultMarqueeDelayMillis:I = 0x4b0

.field private static final DefaultMarqueeIterations:I = 0x3

.field private static final DefaultMarqueeSpacing:Landroidx/compose/foundation/MarqueeSpacing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultMarqueeVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/foundation/MarqueeSpacing;->Companion:Landroidx/compose/foundation/MarqueeSpacing$Companion;

    const v1, 0x3eaaaaab

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/MarqueeSpacing$Companion;->fractionOfContainer(F)Landroidx/compose/foundation/MarqueeSpacing;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeSpacing:Landroidx/compose/foundation/MarqueeSpacing;

    const/16 v0, 0x1e

    int-to-float v0, v0

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 3
    sput v0, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeVelocity:F

    return-void
.end method

.method public static final MarqueeSpacing-0680j_4(F)Landroidx/compose/foundation/MarqueeSpacing;
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/BasicMarqueeKt$MarqueeSpacing$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/BasicMarqueeKt$MarqueeSpacing$1;-><init>(F)V

    return-object v0
.end method

.method public static final synthetic access$createMarqueeAnimationSpec-Z4HSEVQ(IFIIFLandroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BasicMarqueeKt;->createMarqueeAnimationSpec-Z4HSEVQ(IFIIFLandroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final basicMarquee-1Mj1MLw(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/foundation/MarqueeSpacing;F)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/MarqueeSpacing;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$basicMarquee"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spacing"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee-1Mj1MLw$$inlined$debugInspectorInfo$1;-><init>(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v8, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;

    move-object v1, v8

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p6

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;-><init>(IIIFLandroidx/compose/foundation/MarqueeSpacing;I)V

    invoke-static {p0, v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic basicMarquee-1Mj1MLw$default(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/foundation/MarqueeSpacing;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 1
    sget p1, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeIterations:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 2
    sget-object p2, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {p2}, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;->getImmediately-ZbEOnfQ()I

    move-result p2

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    .line 3
    sget p3, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeDelayMillis:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_4

    .line 4
    sget-object p2, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {p2}, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;->getImmediately-ZbEOnfQ()I

    move-result p2

    invoke-static {p8, p2}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_3

    move p4, v0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    const/4 p4, 0x0

    :cond_4
    :goto_0
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_5

    .line 5
    sget-object p5, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeSpacing:Landroidx/compose/foundation/MarqueeSpacing;

    :cond_5
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_6

    .line 6
    sget p6, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeVelocity:F

    :cond_6
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    .line 7
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/BasicMarqueeKt;->basicMarquee-1Mj1MLw(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/foundation/MarqueeSpacing;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final createMarqueeAnimationSpec-Z4HSEVQ(IFIIFLandroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFIIF",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p5, p4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p4

    .line 2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 3
    invoke-static {p4, p1, p3}, Landroidx/compose/foundation/BasicMarqueeKt;->velocityBasedTween(FFI)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    neg-int p1, p3

    add-int/2addr p1, p2

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    .line 4
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide v3

    const p1, 0x7fffffff

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x2

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p0

    move-wide v2, v3

    move v4, p1

    .line 5
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v0, p0

    .line 6
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/AnimationSpecKt;->repeatable-91I0pcU$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/RepeatableSpec;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getDefaultMarqueeDelayMillis()I
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    sget v0, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeDelayMillis:I

    return v0
.end method

.method public static synthetic getDefaultMarqueeDelayMillis$annotations()V
    .locals 0
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    return-void
.end method

.method public static final getDefaultMarqueeIterations()I
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    sget v0, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeIterations:I

    return v0
.end method

.method public static synthetic getDefaultMarqueeIterations$annotations()V
    .locals 0
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    return-void
.end method

.method public static final getDefaultMarqueeSpacing()Landroidx/compose/foundation/MarqueeSpacing;
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeSpacing:Landroidx/compose/foundation/MarqueeSpacing;

    return-object v0
.end method

.method public static synthetic getDefaultMarqueeSpacing$annotations()V
    .locals 0
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    return-void
.end method

.method public static final getDefaultMarqueeVelocity()F
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    sget v0, Landroidx/compose/foundation/BasicMarqueeKt;->DefaultMarqueeVelocity:F

    return v0
.end method

.method public static synthetic getDefaultMarqueeVelocity$annotations()V
    .locals 0
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    return-void
.end method

.method private static final velocityBasedTween(FFI)Landroidx/compose/animation/core/TweenSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFI)",
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    .line 2
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p1

    .line 3
    invoke-static {p0, p2, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    return-object p0
.end method
