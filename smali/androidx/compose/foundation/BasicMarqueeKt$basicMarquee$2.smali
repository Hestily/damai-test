.class final Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BasicMarqueeKt;->basicMarquee-1Mj1MLw(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/foundation/MarqueeSpacing;F)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $animationMode:I

.field final synthetic $delayMillis:I

.field final synthetic $initialDelayMillis:I

.field final synthetic $iterations:I

.field final synthetic $spacing:Landroidx/compose/foundation/MarqueeSpacing;

.field final synthetic $velocity:F


# direct methods
.method constructor <init>(IIIFLandroidx/compose/foundation/MarqueeSpacing;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$iterations:I

    iput p2, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$delayMillis:I

    iput p3, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$initialDelayMillis:I

    iput p4, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$velocity:F

    iput-object p5, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$spacing:Landroidx/compose/foundation/MarqueeSpacing;

    iput p6, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$animationMode:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, -0x21840cfd

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.basicMarquee.<anonymous> (BasicMarquee.kt:147)"

    .line 2
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    .line 3
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 5
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    .line 6
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/ui/unit/LayoutDirection;

    const/4 p3, 0x6

    new-array v0, p3, [Ljava/lang/Object;

    .line 8
    iget v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$iterations:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 9
    iget v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$delayMillis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 10
    iget v3, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$initialDelayMillis:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 11
    iget v3, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$velocity:F

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 12
    iget v1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$iterations:I

    iget v3, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$delayMillis:I

    iget v4, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$initialDelayMillis:I

    iget v6, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$velocity:F

    const v7, -0x21de6e89

    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    .line 13
    aget-object v8, v0, v2

    invoke-interface {p2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez v7, :cond_2

    .line 15
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_4

    .line 16
    :cond_2
    new-instance p3, Landroidx/compose/foundation/MarqueeModifier;

    .line 17
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    :goto_1
    mul-float v6, v6, p1

    .line 18
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    const/4 v6, 0x0

    move-object v0, p3

    move v2, v3

    move v3, v4

    move v4, p1

    .line 19
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/MarqueeModifier;-><init>(IIIFLandroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 21
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 22
    check-cast p3, Landroidx/compose/foundation/MarqueeModifier;

    .line 23
    iget-object p1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$spacing:Landroidx/compose/foundation/MarqueeSpacing;

    invoke-virtual {p3, p1}, Landroidx/compose/foundation/MarqueeModifier;->setSpacing(Landroidx/compose/foundation/MarqueeSpacing;)V

    .line 24
    iget p1, p0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->$animationMode:I

    invoke-virtual {p3, p1}, Landroidx/compose/foundation/MarqueeModifier;->setAnimationMode-97h66l8(I)V

    const p1, 0x44faf204

    .line 25
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 26
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    .line 27
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_5

    .line 28
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_6

    .line 29
    :cond_5
    new-instance v0, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2$1$1;

    const/4 p1, 0x0

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2$1$1;-><init>(Landroidx/compose/foundation/MarqueeModifier;Lkotlin/coroutines/Continuation;)V

    .line 30
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 31
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 p1, 0x40

    .line 32
    invoke-static {p3, v0, p2, p1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p3
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/BasicMarqueeKt$basicMarquee$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
