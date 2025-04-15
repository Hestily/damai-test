.class public final Landroidx/compose/foundation/AndroidOverscrollKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    invoke-direct {v0}, Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 3
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 4
    sget-object v1, Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1;->INSTANCE:Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2;->INSTANCE:Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 7
    :goto_0
    sput-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final synthetic access$getNoOpOverscrollEffect$p()Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    return-object v0
.end method

.method public static final synthetic access$getStretchOverscrollNonClippingLayer$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method private static synthetic getNoOpOverscrollEffect$annotations()V
    .locals 0

    return-void
.end method

.method public static final rememberOverscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;
    .locals 3
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, -0x4d61273

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.rememberOverscrollEffect (AndroidOverscroll.kt:62)"

    .line 1
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Landroid/content/Context;

    .line 5
    invoke-static {}, Landroidx/compose/foundation/OverscrollConfigurationKt;->getLocalOverscrollConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/OverscrollConfiguration;

    const v1, 0x1e7b2b64

    .line 8
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 9
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 10
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    .line 11
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 12
    new-instance v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-direct {v1, p1, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V

    move-object v2, v1

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Landroidx/compose/foundation/AndroidOverscrollKt;->access$getNoOpOverscrollEffect$p()Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    move-result-object p1

    move-object v2, p1

    .line 14
    :goto_0
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 15
    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 16
    check-cast v2, Landroidx/compose/foundation/OverscrollEffect;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method
