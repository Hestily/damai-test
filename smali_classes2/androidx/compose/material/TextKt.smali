.class public final Landroidx/compose/material/TextKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/text/TextStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/TextKt$LocalTextStyle$1;->INSTANCE:Landroidx/compose/material/TextKt$LocalTextStyle$1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p0    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x69a2bc9c

    .line 1
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v2, p3, 0x70

    if-nez v2, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 2
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 3
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material.ProvideTextStyle (Text.kt:262)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 4
    :cond_6
    sget-object v0, Landroidx/compose/material/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 5
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    .line 6
    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/compose/runtime/ProvidedValue;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    aput-object v0, v3, v4

    and-int/lit8 v0, v1, 0x70

    or-int/lit8 v0, v0, 0x8

    invoke-static {v3, p1, p2, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 8
    :cond_7
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/material/TextKt$ProvideTextStyle$1;-><init>(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public static final Text--4IGK_g(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 63
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/text/font/FontStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/text/style/TextAlign;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "J",
            "Landroidx/compose/ui/text/style/TextDecoration;",
            "Landroidx/compose/ui/text/style/TextAlign;",
            "JIZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v14, p22

    move/from16 v15, p23

    move/from16 v13, p24

    const-string/jumbo v0, "text"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x192d3592

    move-object/from16 v2, p21

    .line 1
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_2
    move v3, v14

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v14, 0x70

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v9, p1

    :goto_4
    and-int/lit8 v10, v13, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v3, v3, 0x180

    move-wide/from16 v7, p2

    goto :goto_6

    :cond_6
    and-int/lit16 v4, v14, 0x380

    move-wide/from16 v7, p2

    if-nez v4, :cond_8

    invoke-interface {v2, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_5

    :cond_7
    const/16 v17, 0x80

    :goto_5
    or-int v3, v3, v17

    :cond_8
    :goto_6
    and-int/lit8 v17, v13, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v3, v3, 0xc00

    move-wide/from16 v11, p4

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v14, 0x1c00

    move-wide/from16 v11, p4

    if-nez v4, :cond_b

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x800

    goto :goto_7

    :cond_a
    const/16 v22, 0x400

    :goto_7
    or-int v3, v3, v22

    :cond_b
    :goto_8
    and-int/lit8 v22, v13, 0x10

    if-eqz v22, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v5, p6

    goto :goto_a

    :cond_c
    const v24, 0xe000

    and-int v24, v14, v24

    move-object/from16 v5, p6

    if-nez v24, :cond_e

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const/16 v25, 0x4000

    goto :goto_9

    :cond_d
    const/16 v25, 0x2000

    :goto_9
    or-int v3, v3, v25

    :cond_e
    :goto_a
    and-int/lit8 v25, v13, 0x20

    const/high16 v26, 0x70000

    const/high16 v27, 0x10000

    if-eqz v25, :cond_f

    const/high16 v28, 0x30000

    or-int v3, v3, v28

    move-object/from16 v0, p7

    goto :goto_c

    :cond_f
    and-int v28, v14, v26

    move-object/from16 v0, p7

    if-nez v28, :cond_11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    const/high16 v29, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v29, 0x10000

    :goto_b
    or-int v3, v3, v29

    :cond_11
    :goto_c
    and-int/lit8 v29, v13, 0x40

    const/high16 v30, 0x380000

    if-eqz v29, :cond_12

    const/high16 v31, 0x180000

    or-int v3, v3, v31

    move-object/from16 v4, p8

    goto :goto_e

    :cond_12
    and-int v31, v14, v30

    move-object/from16 v4, p8

    if-nez v31, :cond_14

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    const/high16 v32, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v32, 0x80000

    :goto_d
    or-int v3, v3, v32

    :cond_14
    :goto_e
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_15

    const/high16 v32, 0xc00000

    or-int v3, v3, v32

    move-wide/from16 v4, p9

    goto :goto_10

    :cond_15
    const/high16 v32, 0x1c00000

    and-int v32, v14, v32

    move-wide/from16 v4, p9

    if-nez v32, :cond_17

    invoke-interface {v2, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v32

    if-eqz v32, :cond_16

    const/high16 v32, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v32, 0x400000

    :goto_f
    or-int v3, v3, v32

    :cond_17
    :goto_10
    and-int/lit16 v1, v13, 0x100

    if-eqz v1, :cond_18

    const/high16 v32, 0x6000000

    or-int v3, v3, v32

    move-object/from16 v4, p11

    goto :goto_12

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v14, v32

    move-object/from16 v4, p11

    if-nez v32, :cond_1a

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/high16 v5, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v5, 0x2000000

    :goto_11
    or-int/2addr v3, v5

    :cond_1a
    :goto_12
    and-int/lit16 v5, v13, 0x200

    if-eqz v5, :cond_1b

    const/high16 v32, 0x30000000

    or-int v3, v3, v32

    move-object/from16 v4, p12

    goto :goto_14

    :cond_1b
    const/high16 v32, 0x70000000

    and-int v32, v14, v32

    move-object/from16 v4, p12

    if-nez v32, :cond_1d

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_13
    or-int v3, v3, v32

    :cond_1d
    :goto_14
    and-int/lit16 v4, v13, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v24, v15, 0x6

    move-wide/from16 v7, p13

    goto :goto_16

    :cond_1e
    and-int/lit8 v32, v15, 0xe

    move-wide/from16 v7, p13

    if-nez v32, :cond_20

    invoke-interface {v2, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v24, 0x4

    goto :goto_15

    :cond_1f
    const/16 v24, 0x2

    :goto_15
    or-int v24, v15, v24

    goto :goto_16

    :cond_20
    move/from16 v24, v15

    :goto_16
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v24, v24, 0x30

    goto :goto_18

    :cond_21
    and-int/lit8 v8, v15, 0x70

    if-nez v8, :cond_23

    move/from16 v8, p15

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v16, 0x20

    goto :goto_17

    :cond_22
    const/16 v16, 0x10

    :goto_17
    or-int v24, v24, v16

    goto :goto_18

    :cond_23
    move/from16 v8, p15

    :goto_18
    move/from16 v8, v24

    and-int/lit16 v9, v13, 0x1000

    if-eqz v9, :cond_24

    or-int/lit16 v8, v8, 0x180

    goto :goto_1a

    :cond_24
    and-int/lit16 v11, v15, 0x380

    if-nez v11, :cond_26

    move/from16 v11, p16

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_25

    const/16 v23, 0x100

    goto :goto_19

    :cond_25
    const/16 v23, 0x80

    :goto_19
    or-int v8, v8, v23

    goto :goto_1b

    :cond_26
    :goto_1a
    move/from16 v11, p16

    :goto_1b
    and-int/lit16 v12, v13, 0x2000

    if-eqz v12, :cond_27

    or-int/lit16 v8, v8, 0xc00

    goto :goto_1d

    :cond_27
    and-int/lit16 v11, v15, 0x1c00

    if-nez v11, :cond_29

    move/from16 v11, p17

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_1c

    :cond_28
    const/16 v18, 0x400

    :goto_1c
    or-int v8, v8, v18

    goto :goto_1e

    :cond_29
    :goto_1d
    move/from16 v11, p17

    :goto_1e
    and-int/lit16 v11, v13, 0x4000

    if-eqz v11, :cond_2a

    or-int/lit16 v8, v8, 0x2000

    :cond_2a
    const v16, 0x8000

    and-int v16, v13, v16

    if-eqz v16, :cond_2b

    const/high16 v18, 0x30000

    or-int v8, v8, v18

    goto :goto_20

    :cond_2b
    and-int v18, v15, v26

    if-nez v18, :cond_2d

    move/from16 v18, v12

    move-object/from16 v12, p19

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    const/high16 v19, 0x20000

    goto :goto_1f

    :cond_2c
    const/high16 v19, 0x10000

    :goto_1f
    or-int v8, v8, v19

    goto :goto_21

    :cond_2d
    :goto_20
    move/from16 v18, v12

    move-object/from16 v12, p19

    :goto_21
    and-int v19, v15, v30

    if-nez v19, :cond_2f

    and-int v19, v13, v27

    move-object/from16 v12, p20

    if-nez v19, :cond_2e

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    const/high16 v19, 0x100000

    goto :goto_22

    :cond_2e
    const/high16 v19, 0x80000

    :goto_22
    or-int v8, v8, v19

    goto :goto_23

    :cond_2f
    move-object/from16 v12, p20

    :goto_23
    const/16 v12, 0x4000

    if-ne v11, v12, :cond_31

    const v12, 0x5b6db6db

    and-int/2addr v12, v3

    const v15, 0x12492492

    if-ne v12, v15, :cond_31

    const v12, 0x2db6db

    and-int/2addr v12, v8

    const v15, 0x92492

    if-ne v12, v15, :cond_31

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_30

    goto :goto_24

    .line 2
    :cond_30
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p1

    move-wide/from16 v3, p2

    move-wide/from16 v23, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    goto/16 :goto_3c

    .line 3
    :cond_31
    :goto_24
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v14, 0x1

    if-eqz v12, :cond_35

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_32

    goto :goto_25

    .line 4
    :cond_32
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v11, :cond_33

    const v0, -0xe001

    and-int/2addr v8, v0

    :cond_33
    and-int v0, v13, v27

    if-eqz v0, :cond_34

    const v0, -0x380001

    and-int/2addr v8, v0

    :cond_34
    move-object/from16 v6, p1

    move-wide/from16 v19, p2

    move-wide/from16 v23, p4

    move-object/from16 v12, p6

    move-object/from16 v17, p7

    move-object/from16 v21, p8

    move-wide/from16 v0, p9

    move-object/from16 v4, p11

    move-object/from16 v10, p12

    move/from16 v5, p15

    move/from16 v9, p16

    move/from16 v11, p17

    move-object/from16 v15, p18

    move-object/from16 v16, p19

    move-object/from16 p12, p20

    move v13, v8

    move-wide/from16 v7, p13

    goto/16 :goto_36

    :cond_35
    :goto_25
    if-eqz v6, :cond_36

    .line 5
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_26

    :cond_36
    move-object/from16 v6, p1

    :goto_26
    if-eqz v10, :cond_37

    .line 6
    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v19

    goto :goto_27

    :cond_37
    move-wide/from16 v19, p2

    :goto_27
    if-eqz v17, :cond_38

    .line 7
    sget-object v10, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v23

    goto :goto_28

    :cond_38
    move-wide/from16 v23, p4

    :goto_28
    const/4 v10, 0x0

    if-eqz v22, :cond_39

    move-object v12, v10

    goto :goto_29

    :cond_39
    move-object/from16 v12, p6

    :goto_29
    if-eqz v25, :cond_3a

    move-object/from16 v17, v10

    goto :goto_2a

    :cond_3a
    move-object/from16 v17, p7

    :goto_2a
    if-eqz v29, :cond_3b

    move-object/from16 v21, v10

    goto :goto_2b

    :cond_3b
    move-object/from16 v21, p8

    :goto_2b
    if-eqz v0, :cond_3c

    .line 8
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v31

    goto :goto_2c

    :cond_3c
    move-wide/from16 v31, p9

    :goto_2c
    if-eqz v1, :cond_3d

    move-object v0, v10

    goto :goto_2d

    :cond_3d
    move-object/from16 v0, p11

    :goto_2d
    if-eqz v5, :cond_3e

    goto :goto_2e

    :cond_3e
    move-object/from16 v10, p12

    :goto_2e
    if-eqz v4, :cond_3f

    .line 9
    sget-object v1, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v4

    goto :goto_2f

    :cond_3f
    move-wide/from16 v4, p13

    :goto_2f
    if-eqz v7, :cond_40

    .line 10
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v1

    goto :goto_30

    :cond_40
    move/from16 v1, p15

    :goto_30
    if-eqz v9, :cond_41

    const/4 v7, 0x1

    goto :goto_31

    :cond_41
    move/from16 v7, p16

    :goto_31
    if-eqz v18, :cond_42

    const v9, 0x7fffffff

    goto :goto_32

    :cond_42
    move/from16 v9, p17

    :goto_32
    if-eqz v11, :cond_43

    .line 11
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v11

    const v18, -0xe001

    and-int v8, v8, v18

    goto :goto_33

    :cond_43
    move-object/from16 v11, p18

    :goto_33
    if-eqz v16, :cond_44

    .line 12
    sget-object v16, Landroidx/compose/material/TextKt$Text$3;->INSTANCE:Landroidx/compose/material/TextKt$Text$3;

    goto :goto_34

    :cond_44
    move-object/from16 v16, p19

    :goto_34
    and-int v18, v13, v27

    if-eqz v18, :cond_45

    .line 13
    sget-object v15, Landroidx/compose/material/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 14
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/TextStyle;

    const v18, -0x380001

    and-int v8, v8, v18

    move v13, v8

    move-object/from16 p12, v15

    goto :goto_35

    :cond_45
    move-object/from16 p12, p20

    move v13, v8

    :goto_35
    move-object v15, v11

    move v11, v9

    move v9, v7

    move-wide v7, v4

    move-object v4, v0

    move v5, v1

    move-wide/from16 v0, v31

    :goto_36
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_46

    const-string v14, "androidx.compose.material.Text (Text.kt:193)"

    move-object/from16 p13, v15

    const v15, -0x192d3592

    .line 15
    invoke-static {v15, v3, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_37

    :cond_46
    move-object/from16 p13, v15

    :goto_37
    const v14, 0x5cd75e10

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    sget-object v14, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v27

    cmp-long v15, v19, v27

    if-eqz v15, :cond_47

    const/4 v15, 0x1

    goto :goto_38

    :cond_47
    const/4 v15, 0x0

    :goto_38
    if-eqz v15, :cond_48

    move/from16 p14, v11

    move-wide/from16 v32, v19

    goto :goto_3b

    .line 17
    :cond_48
    invoke-virtual/range {p12 .. p12}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v27

    .line 18
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v14

    cmp-long v18, v27, v14

    if-eqz v18, :cond_49

    const/4 v15, 0x1

    goto :goto_39

    :cond_49
    const/4 v15, 0x0

    :goto_39
    if-eqz v15, :cond_4a

    move/from16 p14, v11

    goto :goto_3a

    .line 19
    :cond_4a
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 20
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v14

    move/from16 p14, v11

    .line 21
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    .line 22
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v27, 0xe

    const/16 v28, 0x0

    move-wide/from16 p1, v14

    move/from16 p3, v11

    move/from16 p4, v18

    move/from16 p5, v22

    move/from16 p6, v25

    move/from16 p7, v27

    move-object/from16 p8, v28

    .line 23
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v27

    :goto_3a
    move-wide/from16 v32, v27

    .line 24
    :goto_3b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 25
    new-instance v11, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v31, v11

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v54, 0x0

    const v55, 0x2af50

    const/16 v56, 0x0

    move-wide/from16 v34, v23

    move-object/from16 v36, v17

    move-object/from16 v37, v12

    move-object/from16 v39, v21

    move-wide/from16 v41, v0

    move-object/from16 v48, v4

    move-object/from16 v50, v10

    move-wide/from16 v52, v7

    invoke-direct/range {v31 .. v56}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v15, p12

    .line 26
    invoke-virtual {v15, v11}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v11

    const/high16 v14, 0x1000000

    and-int/lit8 v18, v3, 0xe

    or-int v14, v18, v14

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v3, v14

    shr-int/lit8 v14, v13, 0x6

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v3, v14

    const v14, 0xe000

    shl-int/lit8 v13, v13, 0x9

    and-int/2addr v14, v13

    or-int/2addr v3, v14

    and-int v14, v13, v26

    or-int/2addr v3, v14

    and-int v13, v13, v30

    or-int/2addr v3, v13

    const/4 v13, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v6

    move-object/from16 p3, v11

    move-object/from16 p4, v16

    move/from16 p5, v5

    move/from16 p6, v9

    move/from16 p7, p14

    move-object/from16 p8, p13

    move-object/from16 p9, v2

    move/from16 p10, v3

    move/from16 p11, v13

    .line 27
    invoke-static/range {p1 .. p11}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4b
    move/from16 v18, p14

    move-object v13, v10

    move-wide v10, v0

    move-wide/from16 v59, v19

    move-object/from16 v19, p13

    move-object/from16 v20, v16

    move/from16 v16, v5

    move-object/from16 v61, v12

    move-object v12, v4

    move-wide/from16 v3, v59

    move-object/from16 v62, v17

    move/from16 v17, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v15

    move-wide v14, v7

    move-object/from16 v7, v61

    move-object/from16 v8, v62

    .line 28
    :goto_3c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v5

    if-nez v5, :cond_4c

    goto :goto_3d

    :cond_4c
    new-instance v2, Landroidx/compose/material/TextKt$Text$4;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v57, v2

    move-object v2, v6

    move-object/from16 v58, v5

    move-wide/from16 v5, v23

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    invoke-direct/range {v0 .. v24}, Landroidx/compose/material/TextKt$Text$4;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v57

    move-object/from16 v0, v58

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3d
    return-void
.end method

.method public static final Text-fLXpl1I(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
    .locals 60
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/text/font/FontStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/text/style/TextAlign;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "J",
            "Landroidx/compose/ui/text/style/TextDecoration;",
            "Landroidx/compose/ui/text/style/TextAlign;",
            "JIZI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v14, p21

    move/from16 v15, p22

    move/from16 v13, p23

    const-string/jumbo v0, "text"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x15d2a760

    move-object/from16 v2, p20

    .line 1
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_2
    move v3, v14

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v14, 0x70

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v9, p1

    :goto_4
    and-int/lit8 v10, v13, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v3, v3, 0x180

    move-wide/from16 v7, p2

    goto :goto_6

    :cond_6
    and-int/lit16 v4, v14, 0x380

    move-wide/from16 v7, p2

    if-nez v4, :cond_8

    invoke-interface {v2, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_5

    :cond_7
    const/16 v17, 0x80

    :goto_5
    or-int v3, v3, v17

    :cond_8
    :goto_6
    and-int/lit8 v17, v13, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v3, v3, 0xc00

    move-wide/from16 v11, p4

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v14, 0x1c00

    move-wide/from16 v11, p4

    if-nez v4, :cond_b

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x800

    goto :goto_7

    :cond_a
    const/16 v22, 0x400

    :goto_7
    or-int v3, v3, v22

    :cond_b
    :goto_8
    and-int/lit8 v22, v13, 0x10

    const/16 v23, 0x4000

    const/16 v24, 0x2000

    const v25, 0xe000

    if-eqz v22, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v4, p6

    goto :goto_a

    :cond_c
    and-int v26, v14, v25

    move-object/from16 v4, p6

    if-nez v26, :cond_e

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/16 v27, 0x4000

    goto :goto_9

    :cond_d
    const/16 v27, 0x2000

    :goto_9
    or-int v3, v3, v27

    :cond_e
    :goto_a
    and-int/lit8 v27, v13, 0x20

    const/high16 v28, 0x70000

    if-eqz v27, :cond_f

    const/high16 v29, 0x30000

    or-int v3, v3, v29

    move-object/from16 v5, p7

    goto :goto_c

    :cond_f
    and-int v29, v14, v28

    move-object/from16 v5, p7

    if-nez v29, :cond_11

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    const/high16 v30, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v30, 0x10000

    :goto_b
    or-int v3, v3, v30

    :cond_11
    :goto_c
    and-int/lit8 v30, v13, 0x40

    if-eqz v30, :cond_12

    const/high16 v31, 0x180000

    or-int v3, v3, v31

    move-object/from16 v0, p8

    goto :goto_e

    :cond_12
    const/high16 v31, 0x380000

    and-int v31, v14, v31

    move-object/from16 v0, p8

    if-nez v31, :cond_14

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    const/high16 v32, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v32, 0x80000

    :goto_d
    or-int v3, v3, v32

    :cond_14
    :goto_e
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_15

    const/high16 v32, 0xc00000

    or-int v3, v3, v32

    move-wide/from16 v4, p9

    goto :goto_10

    :cond_15
    const/high16 v32, 0x1c00000

    and-int v32, v14, v32

    move-wide/from16 v4, p9

    if-nez v32, :cond_17

    invoke-interface {v2, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v32

    if-eqz v32, :cond_16

    const/high16 v32, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v32, 0x400000

    :goto_f
    or-int v3, v3, v32

    :cond_17
    :goto_10
    and-int/lit16 v1, v13, 0x100

    if-eqz v1, :cond_18

    const/high16 v32, 0x6000000

    or-int v3, v3, v32

    move-object/from16 v4, p11

    goto :goto_12

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v14, v32

    move-object/from16 v4, p11

    if-nez v32, :cond_1a

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/high16 v5, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v5, 0x2000000

    :goto_11
    or-int/2addr v3, v5

    :cond_1a
    :goto_12
    and-int/lit16 v5, v13, 0x200

    if-eqz v5, :cond_1b

    const/high16 v32, 0x30000000

    or-int v3, v3, v32

    move-object/from16 v4, p12

    goto :goto_14

    :cond_1b
    const/high16 v32, 0x70000000

    and-int v32, v14, v32

    move-object/from16 v4, p12

    if-nez v32, :cond_1d

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_13
    or-int v3, v3, v32

    :cond_1d
    :goto_14
    and-int/lit16 v4, v13, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v29, v15, 0x6

    move-wide/from16 v7, p13

    goto :goto_16

    :cond_1e
    and-int/lit8 v32, v15, 0xe

    move-wide/from16 v7, p13

    if-nez v32, :cond_20

    invoke-interface {v2, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v29, 0x4

    goto :goto_15

    :cond_1f
    const/16 v29, 0x2

    :goto_15
    or-int v29, v15, v29

    goto :goto_16

    :cond_20
    move/from16 v29, v15

    :goto_16
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v29, v29, 0x30

    goto :goto_18

    :cond_21
    and-int/lit8 v8, v15, 0x70

    if-nez v8, :cond_23

    move/from16 v8, p15

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v16, 0x20

    goto :goto_17

    :cond_22
    const/16 v16, 0x10

    :goto_17
    or-int v29, v29, v16

    goto :goto_18

    :cond_23
    move/from16 v8, p15

    :goto_18
    move/from16 v8, v29

    and-int/lit16 v9, v13, 0x1000

    if-eqz v9, :cond_24

    or-int/lit16 v8, v8, 0x180

    goto :goto_1a

    :cond_24
    and-int/lit16 v11, v15, 0x380

    if-nez v11, :cond_26

    move/from16 v11, p16

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_25

    const/16 v26, 0x100

    goto :goto_19

    :cond_25
    const/16 v26, 0x80

    :goto_19
    or-int v8, v8, v26

    goto :goto_1b

    :cond_26
    :goto_1a
    move/from16 v11, p16

    :goto_1b
    and-int/lit16 v12, v13, 0x2000

    if-eqz v12, :cond_27

    or-int/lit16 v8, v8, 0xc00

    goto :goto_1d

    :cond_27
    and-int/lit16 v11, v15, 0x1c00

    if-nez v11, :cond_29

    move/from16 v11, p17

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_1c

    :cond_28
    const/16 v18, 0x400

    :goto_1c
    or-int v8, v8, v18

    goto :goto_1e

    :cond_29
    :goto_1d
    move/from16 v11, p17

    :goto_1e
    and-int/lit16 v11, v13, 0x4000

    if-eqz v11, :cond_2a

    or-int/lit16 v8, v8, 0x6000

    goto :goto_20

    :cond_2a
    and-int v16, v15, v25

    if-nez v16, :cond_2c

    move/from16 v16, v11

    move-object/from16 v11, p18

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b

    goto :goto_1f

    :cond_2b
    const/16 v23, 0x2000

    :goto_1f
    or-int v8, v8, v23

    goto :goto_21

    :cond_2c
    :goto_20
    move/from16 v16, v11

    move-object/from16 v11, p18

    :goto_21
    and-int v18, v15, v28

    const v19, 0x8000

    if-nez v18, :cond_2e

    and-int v18, v13, v19

    move-object/from16 v11, p19

    if-nez v18, :cond_2d

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d

    const/high16 v18, 0x20000

    goto :goto_22

    :cond_2d
    const/high16 v18, 0x10000

    :goto_22
    or-int v8, v8, v18

    goto :goto_23

    :cond_2e
    move-object/from16 v11, p19

    :goto_23
    const v18, 0x5b6db6db

    and-int v11, v3, v18

    const v15, 0x12492492

    if-ne v11, v15, :cond_30

    const v11, 0x5b6db

    and-int/2addr v11, v8

    const v15, 0x12492

    if-ne v11, v15, :cond_30

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_2f

    goto :goto_24

    .line 2
    :cond_2f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p1

    move-wide/from16 v3, p2

    move-wide/from16 v17, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    goto/16 :goto_39

    .line 3
    :cond_30
    :goto_24
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v11, v14, 0x1

    if-eqz v11, :cond_34

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_31

    goto :goto_25

    .line 4
    :cond_31
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v0, v13, v19

    if-eqz v0, :cond_32

    const v0, -0x70001

    and-int/2addr v8, v0

    :cond_32
    move-object/from16 v6, p1

    move-wide/from16 v10, p2

    move-wide/from16 v17, p4

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    move-object/from16 v23, p8

    move-wide/from16 v26, p9

    move-object/from16 v0, p11

    move-object/from16 v20, p12

    move-wide/from16 v4, p13

    move/from16 v1, p15

    move/from16 v7, p16

    move/from16 v9, p17

    move-object/from16 v12, p18

    :cond_33
    move-object/from16 v15, p19

    goto/16 :goto_34

    :cond_34
    :goto_25
    if-eqz v6, :cond_35

    .line 5
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_26

    :cond_35
    move-object/from16 v6, p1

    :goto_26
    if-eqz v10, :cond_36

    .line 6
    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v10

    goto :goto_27

    :cond_36
    move-wide/from16 v10, p2

    :goto_27
    if-eqz v17, :cond_37

    .line 7
    sget-object v17, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v17

    goto :goto_28

    :cond_37
    move-wide/from16 v17, p4

    :goto_28
    const/16 v20, 0x0

    if-eqz v22, :cond_38

    move-object/from16 v21, v20

    goto :goto_29

    :cond_38
    move-object/from16 v21, p6

    :goto_29
    if-eqz v27, :cond_39

    move-object/from16 v22, v20

    goto :goto_2a

    :cond_39
    move-object/from16 v22, p7

    :goto_2a
    if-eqz v30, :cond_3a

    move-object/from16 v23, v20

    goto :goto_2b

    :cond_3a
    move-object/from16 v23, p8

    :goto_2b
    if-eqz v0, :cond_3b

    .line 8
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v26

    goto :goto_2c

    :cond_3b
    move-wide/from16 v26, p9

    :goto_2c
    if-eqz v1, :cond_3c

    move-object/from16 v0, v20

    goto :goto_2d

    :cond_3c
    move-object/from16 v0, p11

    :goto_2d
    if-eqz v5, :cond_3d

    goto :goto_2e

    :cond_3d
    move-object/from16 v20, p12

    :goto_2e
    if-eqz v4, :cond_3e

    .line 9
    sget-object v1, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v4

    goto :goto_2f

    :cond_3e
    move-wide/from16 v4, p13

    :goto_2f
    if-eqz v7, :cond_3f

    .line 10
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v1

    goto :goto_30

    :cond_3f
    move/from16 v1, p15

    :goto_30
    if-eqz v9, :cond_40

    const/4 v7, 0x1

    goto :goto_31

    :cond_40
    move/from16 v7, p16

    :goto_31
    if-eqz v12, :cond_41

    const v9, 0x7fffffff

    goto :goto_32

    :cond_41
    move/from16 v9, p17

    :goto_32
    if-eqz v16, :cond_42

    .line 11
    sget-object v12, Landroidx/compose/material/TextKt$Text$1;->INSTANCE:Landroidx/compose/material/TextKt$Text$1;

    goto :goto_33

    :cond_42
    move-object/from16 v12, p18

    :goto_33
    and-int v16, v13, v19

    if-eqz v16, :cond_33

    .line 12
    sget-object v15, Landroidx/compose/material/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 13
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/TextStyle;

    const v16, -0x70001

    and-int v8, v8, v16

    :goto_34
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_43

    const-string v13, "androidx.compose.material.Text (Text.kt:90)"

    const v14, -0x15d2a760

    .line 14
    invoke-static {v14, v3, v8, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_43
    const v13, 0x5cd74a20

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v29

    cmp-long v14, v10, v29

    if-eqz v14, :cond_44

    const/4 v14, 0x1

    goto :goto_35

    :cond_44
    const/4 v14, 0x0

    :goto_35
    if-eqz v14, :cond_45

    move-wide/from16 p11, v10

    move-wide/from16 v33, p11

    goto :goto_38

    .line 16
    :cond_45
    invoke-virtual {v15}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v29

    .line 17
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    cmp-long v16, v29, v13

    if-eqz v16, :cond_46

    const/4 v13, 0x1

    goto :goto_36

    :cond_46
    const/4 v13, 0x0

    :goto_36
    if-eqz v13, :cond_47

    move-wide/from16 p11, v10

    goto :goto_37

    .line 18
    :cond_47
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 19
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v13

    move-wide/from16 p11, v10

    .line 20
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    .line 21
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v24, 0xe

    const/16 v29, 0x0

    move-wide/from16 p1, v13

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v16

    move/from16 p6, v19

    move/from16 p7, v24

    move-object/from16 p8, v29

    .line 22
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v29

    :goto_37
    move-wide/from16 v33, v29

    .line 23
    :goto_38
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 24
    new-instance v10, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v10

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v55, 0x0

    const v56, 0x2af50

    const/16 v57, 0x0

    move-wide/from16 v35, v17

    move-object/from16 v37, v22

    move-object/from16 v38, v21

    move-object/from16 v40, v23

    move-wide/from16 v42, v26

    move-object/from16 v49, v0

    move-object/from16 v51, v20

    move-wide/from16 v53, v4

    invoke-direct/range {v32 .. v57}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    invoke-virtual {v15, v10}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v10

    and-int/lit8 v11, v3, 0xe

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v3, v11

    shr-int/lit8 v11, v8, 0x3

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v3, v11

    shl-int/lit8 v8, v8, 0x9

    and-int v11, v8, v25

    or-int/2addr v3, v11

    and-int v11, v8, v28

    or-int/2addr v3, v11

    const/high16 v11, 0x380000

    and-int/2addr v8, v11

    or-int/2addr v3, v8

    const/4 v8, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v6

    move-object/from16 p3, v10

    move-object/from16 p4, v12

    move/from16 p5, v1

    move/from16 p6, v7

    move/from16 p7, v9

    move-object/from16 p8, v2

    move/from16 p9, v3

    move/from16 p10, v8

    .line 26
    invoke-static/range {p1 .. p10}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-BpD7jsM(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_48
    move/from16 v16, v1

    move/from16 v19, v7

    move-object/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-wide/from16 v10, v26

    move/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v15

    move-object/from16 v9, v23

    move-object v12, v0

    move-wide v14, v4

    move-wide/from16 v3, p11

    .line 27
    :goto_39
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v5

    if-nez v5, :cond_49

    goto :goto_3a

    :cond_49
    new-instance v2, Landroidx/compose/material/TextKt$Text$2;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v58, v2

    move-object v2, v6

    move-object/from16 v59, v5

    move-wide/from16 v5, v17

    move/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    invoke-direct/range {v0 .. v23}, Landroidx/compose/material/TextKt$Text$2;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V

    move-object/from16 v1, v58

    move-object/from16 v0, v59

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3a
    return-void
.end method

.method public static final getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/text/TextStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/TextKt;->LocalTextStyle:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
