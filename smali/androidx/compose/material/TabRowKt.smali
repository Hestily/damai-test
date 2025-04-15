.class public final Landroidx/compose/material/TabRowKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final ScrollableTabRowMinimumTabWidth:F

.field private static final ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x5a

    int-to-float v0, v0

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 2
    sput v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowMinimumTabWidth:F

    .line 3
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 4
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public static final ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    const-string/jumbo v0, "tabs"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x57d378e8

    move-object/from16 v2, p10

    .line 1
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v11, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v11

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v11, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v6, v11, 0x380

    if-nez v6, :cond_8

    and-int/lit8 v6, v12, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p2

    invoke-interface {v2, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_5

    :cond_6
    move-wide/from16 v6, p2

    :cond_7
    const/16 v8, 0x80

    :goto_5
    or-int/2addr v3, v8

    goto :goto_6

    :cond_8
    move-wide/from16 v6, p2

    :goto_6
    and-int/lit16 v8, v11, 0x1c00

    if-nez v8, :cond_b

    and-int/lit8 v8, v12, 0x8

    if-nez v8, :cond_9

    move-wide/from16 v8, p4

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_7

    :cond_9
    move-wide/from16 v8, p4

    :cond_a
    const/16 v13, 0x400

    :goto_7
    or-int/2addr v3, v13

    goto :goto_8

    :cond_b
    move-wide/from16 v8, p4

    :goto_8
    and-int/lit8 v13, v12, 0x10

    if-eqz v13, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_a

    :cond_c
    const v14, 0xe000

    and-int/2addr v14, v11

    if-nez v14, :cond_e

    move/from16 v14, p6

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_9

    :cond_d
    const/16 v15, 0x2000

    :goto_9
    or-int/2addr v3, v15

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v14, p6

    :goto_b
    and-int/lit8 v15, v12, 0x20

    if-eqz v15, :cond_f

    const/high16 v16, 0x30000

    or-int v3, v3, v16

    move-object/from16 v0, p7

    goto :goto_d

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v11, v16

    move-object/from16 v0, p7

    if-nez v16, :cond_11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v17, 0x10000

    :goto_c
    or-int v3, v3, v17

    :cond_11
    :goto_d
    and-int/lit8 v17, v12, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v3, v3, v18

    move-object/from16 v0, p8

    goto :goto_f

    :cond_12
    const/high16 v19, 0x380000

    and-int v19, v11, v19

    move-object/from16 v0, p8

    if-nez v19, :cond_14

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v19, 0x80000

    :goto_e
    or-int v3, v3, v19

    :cond_14
    :goto_f
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v0, 0xc00000

    :goto_10
    or-int/2addr v3, v0

    goto :goto_11

    :cond_15
    const/high16 v0, 0x1c00000

    and-int/2addr v0, v11

    if-nez v0, :cond_17

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v0, 0x400000

    goto :goto_10

    :cond_17
    :goto_11
    const v0, 0x16db6db

    and-int/2addr v0, v3

    const v5, 0x492492

    if-ne v0, v5, :cond_19

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_12

    .line 2
    :cond_18
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object/from16 v13, p7

    move-object/from16 v25, p8

    goto/16 :goto_19

    .line 3
    :cond_19
    :goto_12
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_13

    .line 4
    :cond_1a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_1b

    and-int/lit16 v3, v3, -0x381

    :cond_1b
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_1c

    and-int/lit16 v3, v3, -0x1c01

    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v25, p8

    move v13, v3

    move v4, v14

    move-object/from16 v3, p7

    goto :goto_18

    :cond_1d
    :goto_13
    if-eqz v4, :cond_1e

    .line 5
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_14

    :cond_1e
    move-object/from16 v0, p1

    :goto_14
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_1f

    .line 6
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v4, v2, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v6

    and-int/lit16 v3, v3, -0x381

    :cond_1f
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_20

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0xe

    .line 7
    invoke-static {v6, v7, v2, v4}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    and-int/lit16 v3, v3, -0x1c01

    :cond_20
    if-eqz v13, :cond_21

    .line 8
    sget-object v4, Landroidx/compose/material/TabRowDefaults;->INSTANCE:Landroidx/compose/material/TabRowDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/TabRowDefaults;->getScrollableTabRowPadding-D9Ej5fM()F

    move-result v4

    goto :goto_15

    :cond_21
    move v4, v14

    :goto_15
    if-eqz v15, :cond_22

    const v13, -0x2713d00d

    .line 9
    new-instance v14, Landroidx/compose/material/TabRowKt$ScrollableTabRow$1;

    invoke-direct {v14, v1}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$1;-><init>(I)V

    invoke-static {v2, v13, v5, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    goto :goto_16

    :cond_22
    move-object/from16 v13, p7

    :goto_16
    if-eqz v17, :cond_23

    sget-object v14, Landroidx/compose/material/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$TabRowKt;

    invoke-virtual {v14}, Landroidx/compose/material/ComposableSingletons$TabRowKt;->getLambda-2$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    move-object/from16 v25, v14

    goto :goto_17

    :cond_23
    move-object/from16 v25, p8

    :goto_17
    move-object/from16 v26, v13

    move v13, v3

    move-object/from16 v3, v26

    :goto_18
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_24

    const/4 v14, -0x1

    const-string v15, "androidx.compose.material.ScrollableTabRow (TabRow.kt:222)"

    const v5, -0x57d378e8

    .line 10
    invoke-static {v5, v13, v14, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_24
    const/16 v19, 0x0

    const/16 v20, 0x0

    const v5, 0x56c6ab5c

    .line 11
    new-instance v15, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;

    move-object/from16 p1, v15

    move/from16 p2, v4

    move-object/from16 p3, p9

    move-object/from16 p4, v25

    move/from16 p5, p0

    move-object/from16 p6, v3

    move/from16 p7, v13

    invoke-direct/range {p1 .. p7}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;-><init>(FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function3;I)V

    const/4 v14, 0x1

    invoke-static {v2, v5, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v21

    shr-int/lit8 v5, v13, 0x3

    and-int/lit8 v5, v5, 0xe

    or-int v5, v5, v18

    and-int/lit16 v14, v13, 0x380

    or-int/2addr v5, v14

    and-int/lit16 v13, v13, 0x1c00

    or-int v23, v5, v13

    const/16 v24, 0x32

    move-object v13, v0

    const/4 v5, 0x0

    move-object v14, v5

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-object/from16 v22, v2

    .line 12
    invoke-static/range {v13 .. v24}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_25
    move-object v13, v3

    move v14, v4

    move-object v3, v0

    .line 13
    :goto_19
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_26

    goto :goto_1a

    :cond_26
    new-instance v5, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;

    move-object v0, v5

    move/from16 v1, p0

    move-object v2, v3

    move-wide v3, v6

    move-object v7, v5

    move-wide v5, v8

    move-object v9, v7

    move v7, v14

    move-object v8, v13

    move-object v13, v9

    move-object/from16 v9, v25

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;-><init>(ILandroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v15, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1a
    return-void
.end method

.method public static final TabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v9, p8

    move/from16 v10, p10

    const-string/jumbo v0, "tabs"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0xeda1cf9

    move-object/from16 v2, p9

    .line 1
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v10, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v6, v10, 0x380

    if-nez v6, :cond_8

    and-int/lit8 v6, p11, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p2

    invoke-interface {v2, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_5

    :cond_6
    move-wide/from16 v6, p2

    :cond_7
    const/16 v8, 0x80

    :goto_5
    or-int/2addr v3, v8

    goto :goto_6

    :cond_8
    move-wide/from16 v6, p2

    :goto_6
    and-int/lit16 v8, v10, 0x1c00

    if-nez v8, :cond_a

    and-int/lit8 v8, p11, 0x8

    move-wide/from16 v11, p4

    if-nez v8, :cond_9

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x800

    goto :goto_7

    :cond_9
    const/16 v8, 0x400

    :goto_7
    or-int/2addr v3, v8

    goto :goto_8

    :cond_a
    move-wide/from16 v11, p4

    :goto_8
    and-int/lit8 v8, p11, 0x10

    if-eqz v8, :cond_b

    or-int/lit16 v3, v3, 0x6000

    goto :goto_a

    :cond_b
    const v13, 0xe000

    and-int/2addr v13, v10

    if-nez v13, :cond_d

    move-object/from16 v13, p6

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_9

    :cond_c
    const/16 v14, 0x2000

    :goto_9
    or-int/2addr v3, v14

    goto :goto_b

    :cond_d
    :goto_a
    move-object/from16 v13, p6

    :goto_b
    and-int/lit8 v14, p11, 0x20

    if-eqz v14, :cond_e

    const/high16 v15, 0x30000

    or-int/2addr v3, v15

    goto :goto_d

    :cond_e
    const/high16 v15, 0x70000

    and-int/2addr v15, v10

    if-nez v15, :cond_10

    move-object/from16 v15, p7

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_c

    :cond_f
    const/high16 v16, 0x10000

    :goto_c
    or-int v3, v3, v16

    goto :goto_e

    :cond_10
    :goto_d
    move-object/from16 v15, p7

    :goto_e
    and-int/lit8 v16, p11, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v3, v3, v17

    goto :goto_10

    :cond_11
    const/high16 v16, 0x380000

    and-int v16, v10, v16

    if-nez v16, :cond_13

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_f

    :cond_12
    const/high16 v16, 0x80000

    :goto_f
    or-int v3, v3, v16

    :cond_13
    :goto_10
    const v16, 0x2db6db

    and-int v0, v3, v16

    const v5, 0x92492

    if-ne v0, v5, :cond_15

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_11

    .line 2
    :cond_14
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object v8, v13

    move-object/from16 v23, v15

    goto/16 :goto_17

    .line 3
    :cond_15
    :goto_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_19

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_13

    .line 4
    :cond_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_17

    and-int/lit16 v3, v3, -0x381

    :cond_17
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v3, v3, -0x1c01

    :cond_18
    move-object/from16 v0, p1

    move-object v8, v13

    :goto_12
    move-wide/from16 v24, v11

    move v11, v3

    move-wide/from16 v3, v24

    goto :goto_16

    :cond_19
    :goto_13
    if-eqz v4, :cond_1a

    .line 5
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_14

    :cond_1a
    move-object/from16 v0, p1

    :goto_14
    and-int/lit8 v4, p11, 0x4

    if-eqz v4, :cond_1b

    .line 6
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v4, v2, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v6

    and-int/lit16 v3, v3, -0x381

    :cond_1b
    and-int/lit8 v4, p11, 0x8

    if-eqz v4, :cond_1c

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0xe

    .line 7
    invoke-static {v6, v7, v2, v4}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    and-int/lit16 v3, v3, -0x1c01

    :cond_1c
    if-eqz v8, :cond_1d

    const v4, -0x21020db4

    .line 8
    new-instance v8, Landroidx/compose/material/TabRowKt$TabRow$1;

    invoke-direct {v8, v1}, Landroidx/compose/material/TabRowKt$TabRow$1;-><init>(I)V

    invoke-static {v2, v4, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    goto :goto_15

    :cond_1d
    move-object v4, v13

    :goto_15
    if-eqz v14, :cond_1e

    sget-object v8, Landroidx/compose/material/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$TabRowKt;

    invoke-virtual {v8}, Landroidx/compose/material/ComposableSingletons$TabRowKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    move-object v15, v8

    :cond_1e
    move-object v8, v4

    goto :goto_12

    :goto_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_1f

    const/4 v12, -0x1

    const-string v13, "androidx.compose.material.TabRow (TabRow.kt:128)"

    const v14, -0xeda1cf9

    .line 9
    invoke-static {v14, v11, v12, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 10
    :cond_1f
    invoke-static {v0}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v14, -0x74eddfbd

    .line 11
    new-instance v13, Landroidx/compose/material/TabRowKt$TabRow$2;

    invoke-direct {v13, v9, v15, v8, v11}, Landroidx/compose/material/TabRowKt$TabRow$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;I)V

    invoke-static {v2, v14, v5, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    and-int/lit16 v13, v11, 0x380

    or-int v13, v13, v17

    and-int/lit16 v11, v11, 0x1c00

    or-int v21, v13, v11

    const/16 v22, 0x32

    move-object v11, v12

    const/4 v12, 0x0

    move-wide v13, v6

    move-object/from16 v23, v15

    move-wide v15, v3

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    .line 12
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    move-wide v11, v3

    move-object v3, v0

    .line 13
    :goto_17
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_21

    goto :goto_18

    :cond_21
    new-instance v14, Landroidx/compose/material/TabRowKt$TabRow$3;

    move-object v0, v14

    move/from16 v1, p0

    move-object v2, v3

    move-wide v3, v6

    move-wide v5, v11

    move-object v7, v8

    move-object/from16 v8, v23

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/TabRowKt$TabRow$3;-><init>(ILandroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_18
    return-void
.end method

.method public static final synthetic access$getScrollableTabRowMinimumTabWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowMinimumTabWidth:F

    return v0
.end method

.method public static final synthetic access$getScrollableTabRowScrollSpec$p()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method
