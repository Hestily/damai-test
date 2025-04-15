.class public final Landroidx/compose/material/SurfaceKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final Surface-9VG74zQ(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 38
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/Indication;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/ui/semantics/Role;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This API is deprecated with the introduction a newer Surface function overload that accepts an onClick()."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Surface(onClick, modifier, enabled, shape, color, contentColor, border, elevation, interactionSource, content)"
            imports = {}
        .end subannotation
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const-string/jumbo v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5e874d70

    move-object/from16 v1, p15

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v13, 0x70

    if-nez v7, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v1, v8

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v7, p1

    :goto_4
    and-int/lit8 v8, v11, 0x4

    const/16 v16, 0x100

    if-eqz v8, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v2, v13, 0x380

    if-nez v2, :cond_8

    move-object/from16 v2, p2

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_5

    :cond_7
    const/16 v17, 0x80

    :goto_5
    or-int v1, v1, v17

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v2, p2

    :goto_7
    and-int/lit16 v5, v13, 0x1c00

    if-nez v5, :cond_a

    and-int/lit8 v5, v11, 0x8

    move-wide/from16 v6, p3

    if-nez v5, :cond_9

    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x800

    goto :goto_8

    :cond_9
    const/16 v18, 0x400

    :goto_8
    or-int v1, v1, v18

    goto :goto_9

    :cond_a
    move-wide/from16 v6, p3

    :goto_9
    const v18, 0xe000

    and-int v18, v13, v18

    if-nez v18, :cond_c

    and-int/lit8 v18, v11, 0x10

    move-wide/from16 v5, p5

    if-nez v18, :cond_b

    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x4000

    goto :goto_a

    :cond_b
    const/16 v7, 0x2000

    :goto_a
    or-int/2addr v1, v7

    goto :goto_b

    :cond_c
    move-wide/from16 v5, p5

    :goto_b
    and-int/lit8 v7, v11, 0x20

    if-eqz v7, :cond_d

    const/high16 v19, 0x30000

    or-int v1, v1, v19

    move-object/from16 v9, p7

    goto :goto_d

    :cond_d
    const/high16 v19, 0x70000

    and-int v19, v13, v19

    move-object/from16 v9, p7

    if-nez v19, :cond_f

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/high16 v20, 0x20000

    goto :goto_c

    :cond_e
    const/high16 v20, 0x10000

    :goto_c
    or-int v1, v1, v20

    :cond_f
    :goto_d
    and-int/lit8 v20, v11, 0x40

    if-eqz v20, :cond_10

    const/high16 v21, 0x180000

    or-int v1, v1, v21

    move/from16 v3, p8

    goto :goto_f

    :cond_10
    const/high16 v21, 0x380000

    and-int v21, v13, v21

    move/from16 v3, p8

    if-nez v21, :cond_12

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_11

    const/high16 v22, 0x100000

    goto :goto_e

    :cond_11
    const/high16 v22, 0x80000

    :goto_e
    or-int v1, v1, v22

    :cond_12
    :goto_f
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_13

    const/high16 v23, 0xc00000

    or-int v1, v1, v23

    move-object/from16 v2, p9

    goto :goto_11

    :cond_13
    const/high16 v23, 0x1c00000

    and-int v23, v13, v23

    move-object/from16 v2, p9

    if-nez v23, :cond_15

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x800000

    goto :goto_10

    :cond_14
    const/high16 v23, 0x400000

    :goto_10
    or-int v1, v1, v23

    :cond_15
    :goto_11
    const/high16 v23, 0xe000000

    and-int v23, v13, v23

    if-nez v23, :cond_18

    and-int/lit16 v2, v11, 0x100

    if-nez v2, :cond_16

    move-object/from16 v2, p10

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    const/high16 v23, 0x4000000

    goto :goto_12

    :cond_16
    move-object/from16 v2, p10

    :cond_17
    const/high16 v23, 0x2000000

    :goto_12
    or-int v1, v1, v23

    goto :goto_13

    :cond_18
    move-object/from16 v2, p10

    :goto_13
    and-int/lit16 v2, v11, 0x200

    if-eqz v2, :cond_19

    const/high16 v23, 0x30000000

    or-int v1, v1, v23

    move/from16 v3, p11

    goto :goto_15

    :cond_19
    const/high16 v23, 0x70000000

    and-int v23, v13, v23

    move/from16 v3, p11

    if-nez v23, :cond_1b

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/high16 v23, 0x20000000

    goto :goto_14

    :cond_1a
    const/high16 v23, 0x10000000

    :goto_14
    or-int v1, v1, v23

    :cond_1b
    :goto_15
    and-int/lit16 v3, v11, 0x400

    if-eqz v3, :cond_1c

    or-int/lit8 v23, v12, 0x6

    move-object/from16 v5, p12

    goto :goto_17

    :cond_1c
    and-int/lit8 v23, v12, 0xe

    move-object/from16 v5, p12

    if-nez v23, :cond_1e

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x4

    goto :goto_16

    :cond_1d
    const/4 v6, 0x2

    :goto_16
    or-int v23, v12, v6

    goto :goto_17

    :cond_1e
    move/from16 v23, v12

    :goto_17
    and-int/lit16 v6, v11, 0x800

    if-eqz v6, :cond_1f

    or-int/lit8 v23, v23, 0x30

    goto :goto_19

    :cond_1f
    and-int/lit8 v24, v12, 0x70

    move-object/from16 v5, p13

    if-nez v24, :cond_21

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_20

    const/16 v17, 0x20

    goto :goto_18

    :cond_20
    const/16 v17, 0x10

    :goto_18
    or-int v23, v23, v17

    :cond_21
    :goto_19
    move/from16 v5, v23

    and-int/lit16 v9, v11, 0x1000

    if-eqz v9, :cond_22

    or-int/lit16 v5, v5, 0x180

    goto :goto_1b

    :cond_22
    and-int/lit16 v9, v12, 0x380

    if-nez v9, :cond_24

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    const/16 v9, 0x100

    goto :goto_1a

    :cond_23
    const/16 v9, 0x80

    :goto_1a
    or-int/2addr v5, v9

    :cond_24
    :goto_1b
    move v9, v5

    const v5, 0x5b6db6db

    and-int/2addr v5, v1

    const v12, 0x12492492

    if-ne v5, v12, :cond_26

    and-int/lit16 v5, v9, 0x2db

    const/16 v12, 0x92

    if-ne v5, v12, :cond_26

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_1c

    .line 2
    :cond_25
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object v0, v10

    move-object/from16 v10, p9

    goto/16 :goto_2a

    .line 3
    :cond_26
    :goto_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v13, 0x1

    const v16, -0xe000001

    const v17, -0xe001

    const/16 v18, 0x0

    if-eqz v5, :cond_2b

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_1d

    .line 4
    :cond_27
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_28

    and-int/lit16 v1, v1, -0x1c01

    :cond_28
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_29

    and-int v1, v1, v17

    :cond_29
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_2a

    and-int v0, v1, v16

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-wide/from16 v23, p3

    move-wide/from16 v25, p5

    move-object/from16 v20, p7

    move/from16 v27, p8

    move-object/from16 v28, p9

    move-object/from16 v29, p10

    move/from16 v30, p11

    move-object/from16 v31, p12

    move-object/from16 v32, p13

    move v6, v0

    goto/16 :goto_29

    :cond_2a
    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-wide/from16 v23, p3

    move-wide/from16 v25, p5

    move-object/from16 v20, p7

    move/from16 v27, p8

    move-object/from16 v28, p9

    move-object/from16 v29, p10

    move/from16 v30, p11

    move-object/from16 v31, p12

    move-object/from16 v32, p13

    move v6, v1

    goto/16 :goto_29

    :cond_2b
    :goto_1d
    if-eqz v4, :cond_2c

    .line 5
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1e

    :cond_2c
    move-object/from16 v4, p1

    :goto_1e
    if-eqz v8, :cond_2d

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    goto :goto_1f

    :cond_2d
    move-object/from16 v5, p2

    :goto_1f
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_2e

    .line 7
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v12, 0x6

    invoke-virtual {v8, v10, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v23

    and-int/lit16 v1, v1, -0x1c01

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-wide/from16 v4, v23

    goto :goto_20

    :cond_2e
    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-wide/from16 v4, p3

    :goto_20
    and-int/lit8 v8, v11, 0x10

    if-eqz v8, :cond_2f

    shr-int/lit8 v8, v1, 0x9

    and-int/lit8 v8, v8, 0xe

    .line 8
    invoke-static {v4, v5, v10, v8}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    and-int v1, v1, v17

    goto :goto_21

    :cond_2f
    move-wide/from16 v23, p5

    :goto_21
    if-eqz v7, :cond_30

    move-object/from16 v7, v18

    goto :goto_22

    :cond_30
    move-object/from16 v7, p7

    :goto_22
    if-eqz v20, :cond_31

    const/4 v8, 0x0

    int-to-float v12, v8

    .line 9
    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    goto :goto_23

    :cond_31
    move/from16 v8, p8

    :goto_23
    if-eqz v0, :cond_33

    const v0, -0x1d58f75c

    .line 10
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 12
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v0, v12, :cond_32

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 14
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 15
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_24

    :cond_33
    move-object/from16 v0, p9

    :goto_24
    and-int/lit16 v12, v11, 0x100

    if-eqz v12, :cond_34

    .line 16
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->getLocalIndication()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 17
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/Indication;

    and-int v1, v1, v16

    goto :goto_25

    :cond_34
    move-object/from16 v12, p10

    :goto_25
    if-eqz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_26

    :cond_35
    move/from16 v2, p11

    :goto_26
    if-eqz v3, :cond_36

    move-object/from16 v3, v18

    goto :goto_27

    :cond_36
    move-object/from16 v3, p12

    :goto_27
    move-object/from16 v17, p1

    if-eqz v6, :cond_37

    move-object/from16 v28, v0

    move v6, v1

    move/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v20, v7

    move/from16 v27, v8

    move-object/from16 v29, v12

    move-object/from16 v32, v18

    move-wide/from16 v25, v23

    move-object/from16 v18, p2

    goto :goto_28

    :cond_37
    move-object/from16 v18, p2

    move-object/from16 v32, p13

    move-object/from16 v28, v0

    move v6, v1

    move/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v20, v7

    move/from16 v27, v8

    move-object/from16 v29, v12

    move-wide/from16 v25, v23

    :goto_28
    move-wide/from16 v23, v4

    .line 18
    :goto_29
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "androidx.compose.material.Surface (Surface.kt:571)"

    const v1, 0x5e874d70

    .line 19
    invoke-static {v1, v6, v9, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 20
    :cond_38
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 21
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v27

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move v5, v0

    const/4 v1, 0x2

    new-array v12, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 23
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v12, v2

    .line 24
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/16 v16, 0x1

    aput-object v0, v12, v16

    const v8, 0x8eaa230

    .line 25
    new-instance v7, Landroidx/compose/material/SurfaceKt$Surface$13;

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-wide/from16 v3, v23

    move-object/from16 v33, v7

    move-object/from16 v7, v20

    move/from16 v8, v27

    move/from16 v19, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v10

    move-object/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v35, v12

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v14, p0

    move-object/from16 v15, p14

    move/from16 v16, v19

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$13;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v2, v33

    move-object/from16 v0, v34

    const v1, 0x8eaa230

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    const/16 v2, 0x38

    move-object/from16 v3, v35

    .line 26
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_39
    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v20

    move-wide/from16 v4, v23

    move-wide/from16 v6, v25

    move/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move/from16 v12, v30

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    .line 27
    :goto_2a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3a

    goto :goto_2b

    :cond_3a
    new-instance v1, Landroidx/compose/material/SurfaceKt$Surface$14;

    move-object v0, v1

    move-object/from16 v36, v1

    move-object/from16 v1, p0

    move-object/from16 v37, v15

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material/SurfaceKt$Surface$14;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v36

    move-object/from16 v0, v37

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2b
    return-void
.end method

.method public static final Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/BorderStroke;
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

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
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

    move-object/from16 v10, p8

    move/from16 v11, p10

    const-string v0, "content"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x542c837a

    move-object/from16 v1, p9

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v3, v11, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v11, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v11

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v11

    :goto_1
    and-int/lit8 v5, p11, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v11, 0x70

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit16 v7, v11, 0x380

    if-nez v7, :cond_8

    and-int/lit8 v7, p11, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p2

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_5

    :cond_6
    move-wide/from16 v7, p2

    :cond_7
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v4, v9

    goto :goto_6

    :cond_8
    move-wide/from16 v7, p2

    :goto_6
    and-int/lit16 v9, v11, 0x1c00

    if-nez v9, :cond_a

    and-int/lit8 v9, p11, 0x8

    move-wide/from16 v13, p4

    if-nez v9, :cond_9

    invoke-interface {v12, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_7

    :cond_9
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v4, v9

    goto :goto_8

    :cond_a
    move-wide/from16 v13, p4

    :goto_8
    and-int/lit8 v9, p11, 0x10

    if-eqz v9, :cond_b

    or-int/lit16 v4, v4, 0x6000

    goto :goto_a

    :cond_b
    const v15, 0xe000

    and-int/2addr v15, v11

    if-nez v15, :cond_d

    move-object/from16 v15, p6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_9

    :cond_c
    const/16 v16, 0x2000

    :goto_9
    or-int v4, v4, v16

    goto :goto_b

    :cond_d
    :goto_a
    move-object/from16 v15, p6

    :goto_b
    and-int/lit8 v16, p11, 0x20

    if-eqz v16, :cond_e

    const/high16 v17, 0x30000

    or-int v4, v4, v17

    move/from16 v2, p7

    goto :goto_d

    :cond_e
    const/high16 v17, 0x70000

    and-int v17, v11, v17

    move/from16 v2, p7

    if-nez v17, :cond_10

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_c

    :cond_f
    const/high16 v17, 0x10000

    :goto_c
    or-int v4, v4, v17

    :cond_10
    :goto_d
    and-int/lit8 v17, p11, 0x40

    if-eqz v17, :cond_11

    const/high16 v17, 0x180000

    :goto_e
    or-int v4, v4, v17

    goto :goto_f

    :cond_11
    const/high16 v17, 0x380000

    and-int v17, v11, v17

    if-nez v17, :cond_13

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_e

    :cond_12
    const/high16 v17, 0x80000

    goto :goto_e

    :cond_13
    :goto_f
    const v17, 0x2db6db

    and-int v0, v4, v17

    const v2, 0x92492

    if-ne v0, v2, :cond_15

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_10

    .line 2
    :cond_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v1, v3

    move-object v2, v6

    move-wide v3, v7

    move-wide v5, v13

    move-object v7, v15

    move/from16 v8, p7

    goto/16 :goto_16

    .line 3
    :cond_15
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_12

    .line 4
    :cond_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_17

    and-int/lit16 v4, v4, -0x381

    :cond_17
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v0, v4, -0x1c01

    move/from16 v20, p7

    move-wide/from16 v18, v13

    move-object/from16 v17, v15

    move-object v13, v3

    move-object v14, v6

    move-wide v15, v7

    move v6, v0

    goto :goto_15

    :cond_18
    move/from16 v20, p7

    move-wide/from16 v18, v13

    move-object/from16 v17, v15

    move-object v13, v3

    :goto_11
    move-object v14, v6

    move-wide v15, v7

    move v6, v4

    goto :goto_15

    :cond_19
    :goto_12
    if-eqz v1, :cond_1a

    .line 5
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_13

    :cond_1a
    move-object v0, v3

    :goto_13
    if-eqz v5, :cond_1b

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    move-object v6, v1

    :cond_1b
    and-int/lit8 v1, p11, 0x4

    if-eqz v1, :cond_1c

    .line 7
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v1, v12, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    and-int/lit16 v4, v4, -0x381

    :cond_1c
    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_1d

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0xe

    .line 8
    invoke-static {v7, v8, v12, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v13

    and-int/lit16 v4, v4, -0x1c01

    :cond_1d
    if-eqz v9, :cond_1e

    const/4 v1, 0x0

    move-object v15, v1

    :cond_1e
    if-eqz v16, :cond_1f

    int-to-float v1, v2

    .line 9
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move/from16 v20, v1

    goto :goto_14

    :cond_1f
    move/from16 v20, p7

    :goto_14
    move-wide/from16 v18, v13

    move-object/from16 v17, v15

    move-object v13, v0

    goto :goto_11

    :goto_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.Surface (Surface.kt:103)"

    const v3, 0x542c837a

    .line 10
    invoke-static {v3, v6, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 11
    :cond_20
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 12
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v20

    .line 13
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v9, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 14
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    aput-object v0, v9, v2

    .line 15
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v9, v8

    const v7, -0x6c9bf7c6

    .line 16
    new-instance v3, Landroidx/compose/material/SurfaceKt$Surface$1;

    move-object v0, v3

    move-object v1, v13

    move-object v2, v14

    move-object v10, v3

    move-wide v3, v15

    const v11, -0x6c9bf7c6

    move-object/from16 v7, v17

    const/4 v11, 0x1

    move/from16 v8, v20

    move-object/from16 v21, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SurfaceKt$Surface$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;)V

    const v0, -0x6c9bf7c6

    invoke-static {v12, v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, v21

    .line 17
    invoke-static {v2, v0, v12, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_21
    move-object v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-object/from16 v7, v17

    move-wide/from16 v5, v18

    move/from16 v8, v20

    .line 18
    :goto_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_22

    goto :goto_17

    :cond_22
    new-instance v13, Landroidx/compose/material/SurfaceKt$Surface$2;

    move-object v0, v13

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;II)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_17
    return-void
.end method

.method public static final Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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

    move-object/from16 v13, p0

    move-object/from16 v14, p11

    move/from16 v15, p13

    move/from16 v12, p14

    const-string/jumbo v0, "onClick"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d0914cd

    move-object/from16 v1, p12

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v15, 0xe

    if-nez v1, :cond_2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_2
    move v1, v15

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v15, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v4, p1

    :goto_4
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_8

    move/from16 v6, p2

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v1, v7

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v6, p2

    :goto_7
    and-int/lit8 v7, v12, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_8

    :cond_a
    const/16 v9, 0x400

    :goto_8
    or-int/2addr v1, v9

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v8, p3

    :goto_a
    const v9, 0xe000

    and-int/2addr v9, v15

    if-nez v9, :cond_e

    and-int/lit8 v9, v12, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v9, p4

    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_b

    :cond_c
    move-wide/from16 v9, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_b
    or-int v1, v1, v16

    goto :goto_c

    :cond_e
    move-wide/from16 v9, p4

    :goto_c
    const/high16 v16, 0x70000

    and-int v16, v15, v16

    if-nez v16, :cond_11

    and-int/lit8 v16, v12, 0x20

    if-nez v16, :cond_f

    move/from16 v16, v3

    move-wide/from16 v2, p6

    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_d

    :cond_f
    move/from16 v16, v3

    move-wide/from16 v2, p6

    :cond_10
    const/high16 v17, 0x10000

    :goto_d
    or-int v1, v1, v17

    goto :goto_e

    :cond_11
    move/from16 v16, v3

    move-wide/from16 v2, p6

    :goto_e
    and-int/lit8 v17, v12, 0x40

    if-eqz v17, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move-object/from16 v0, p8

    goto :goto_10

    :cond_12
    const/high16 v18, 0x380000

    and-int v18, v15, v18

    move-object/from16 v0, p8

    if-nez v18, :cond_14

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v19, 0x80000

    :goto_f
    or-int v1, v1, v19

    :cond_14
    :goto_10
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v19, 0xc00000

    or-int v1, v1, v19

    move/from16 v2, p9

    goto :goto_12

    :cond_15
    const/high16 v19, 0x1c00000

    and-int v19, v15, v19

    move/from16 v2, p9

    if-nez v19, :cond_17

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_16

    const/high16 v3, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v3, 0x400000

    :goto_11
    or-int/2addr v1, v3

    :cond_17
    :goto_12
    and-int/lit16 v3, v12, 0x100

    if-eqz v3, :cond_18

    const/high16 v19, 0x6000000

    or-int v1, v1, v19

    move-object/from16 v2, p10

    goto :goto_14

    :cond_18
    const/high16 v19, 0xe000000

    and-int v19, v15, v19

    move-object/from16 v2, p10

    if-nez v19, :cond_1a

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v19, 0x2000000

    :goto_13
    or-int v1, v1, v19

    :cond_1a
    :goto_14
    and-int/lit16 v2, v12, 0x200

    if-eqz v2, :cond_1b

    const/high16 v2, 0x30000000

    :goto_15
    or-int/2addr v1, v2

    goto :goto_16

    :cond_1b
    const/high16 v2, 0x70000000

    and-int/2addr v2, v15

    if-nez v2, :cond_1d

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/high16 v2, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v2, 0x10000000

    goto :goto_15

    :cond_1d
    :goto_16
    const v2, 0x5b6db6db

    and-int/2addr v2, v1

    const v4, 0x12492492

    if-ne v2, v4, :cond_1f

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_17

    .line 2
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move v3, v6

    move-object v4, v8

    move-wide v5, v9

    move-object v14, v11

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    goto/16 :goto_21

    .line 3
    :cond_1f
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const v19, -0x70001

    const v20, -0xe001

    if-eqz v2, :cond_23

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_18

    .line 4
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_21

    and-int v1, v1, v20

    :cond_21
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_22

    and-int v0, v1, v19

    move-object/from16 v16, p1

    move-wide/from16 v23, p6

    move-object/from16 v25, p8

    move/from16 v26, p9

    move-object/from16 v27, p10

    move/from16 v19, v6

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move v6, v0

    goto/16 :goto_20

    :cond_22
    move-object/from16 v16, p1

    move-wide/from16 v23, p6

    move-object/from16 v25, p8

    move/from16 v26, p9

    move-object/from16 v27, p10

    move/from16 v19, v6

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move v6, v1

    goto/16 :goto_20

    :cond_23
    :goto_18
    if-eqz v16, :cond_24

    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_24
    move-object/from16 v2, p1

    :goto_19
    if-eqz v5, :cond_25

    const/4 v6, 0x1

    :cond_25
    if-eqz v7, :cond_26

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    goto :goto_1a

    :cond_26
    move-object v5, v8

    :goto_1a
    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_27

    .line 7
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v8, 0x6

    invoke-virtual {v7, v11, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    and-int v1, v1, v20

    goto :goto_1b

    :cond_27
    move-wide v7, v9

    :goto_1b
    and-int/lit8 v9, v12, 0x20

    if-eqz v9, :cond_28

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0xe

    .line 8
    invoke-static {v7, v8, v11, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int v1, v1, v19

    goto :goto_1c

    :cond_28
    move-wide/from16 v9, p6

    :goto_1c
    if-eqz v17, :cond_29

    const/16 v16, 0x0

    goto :goto_1d

    :cond_29
    move-object/from16 v16, p8

    :goto_1d
    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    int-to-float v4, v0

    .line 9
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    goto :goto_1e

    :cond_2a
    move/from16 v0, p9

    :goto_1e
    if-eqz v3, :cond_2c

    const v3, -0x1d58f75c

    .line 10
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 12
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2b

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 14
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 15
    :cond_2b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v26, v0

    move-object/from16 v27, v3

    goto :goto_1f

    :cond_2c
    move-object/from16 v27, p10

    move/from16 v26, v0

    :goto_1f
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    move-wide/from16 v23, v9

    move-object/from16 v25, v16

    move v6, v1

    move-object/from16 v16, v2

    :goto_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.Surface (Surface.kt:208)"

    const v2, 0x5d0914cd

    .line 16
    invoke-static {v2, v6, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 17
    :cond_2d
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 18
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v26

    .line 19
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v10, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 20
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v10, v1

    .line 21
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v10, v3

    const v9, 0x7916180d

    .line 22
    new-instance v8, Landroidx/compose/material/SurfaceKt$Surface$4;

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    const/4 v7, 0x1

    move-wide/from16 v3, v21

    const/4 v13, 0x1

    move-object/from16 v7, v25

    move-object v13, v8

    move/from16 v8, v26

    const v14, 0x7916180d

    move-object/from16 v9, v27

    move-object/from16 v28, v10

    move/from16 v10, v19

    move-object v14, v11

    move-object/from16 v11, p0

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/SurfaceKt$Surface$4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x7916180d

    const/4 v1, 0x1

    invoke-static {v14, v0, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, v28

    .line 23
    invoke-static {v2, v0, v14, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2e
    move-object/from16 v2, v16

    move/from16 v3, v19

    move-object/from16 v4, v20

    move-wide/from16 v5, v21

    move-wide/from16 v7, v23

    move-object/from16 v9, v25

    move/from16 v10, v26

    move-object/from16 v11, v27

    .line 24
    :goto_21
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_2f

    goto :goto_22

    :cond_2f
    new-instance v13, Landroidx/compose/material/SurfaceKt$Surface$5;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v12, p11

    move-object v15, v13

    move/from16 v13, p13

    move-object/from16 v16, v15

    move-object v15, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v16

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_22
    return-void
.end method

.method public static final Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 31
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v14, p12

    move/from16 v13, p14

    move/from16 v12, p16

    const-string/jumbo v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xf9e37f1

    move-object/from16 v1, p13

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    move/from16 v10, p0

    if-nez v1, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v5, p2

    :goto_6
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v7, v13, 0x1c00

    if-nez v7, :cond_b

    move/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_7

    :cond_a
    const/16 v8, 0x400

    :goto_7
    or-int/2addr v1, v8

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v7, p3

    :goto_9
    and-int/lit8 v8, v12, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    const v9, 0xe000

    and-int/2addr v9, v13

    if-nez v9, :cond_e

    move-object/from16 v9, p4

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_a

    :cond_d
    const/16 v16, 0x2000

    :goto_a
    or-int v1, v1, v16

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v9, p4

    :goto_c
    const/high16 v16, 0x70000

    and-int v16, v13, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v12, 0x20

    move-wide/from16 v2, p5

    if-nez v16, :cond_f

    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_d

    :cond_f
    const/high16 v17, 0x10000

    :goto_d
    or-int v1, v1, v17

    goto :goto_e

    :cond_10
    move-wide/from16 v2, p5

    :goto_e
    const/high16 v17, 0x380000

    and-int v17, v13, v17

    if-nez v17, :cond_12

    and-int/lit8 v17, v12, 0x40

    move/from16 v18, v1

    move-wide/from16 v0, p7

    if-nez v17, :cond_11

    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_11

    const/high16 v19, 0x100000

    goto :goto_f

    :cond_11
    const/high16 v19, 0x80000

    :goto_f
    or-int v18, v18, v19

    goto :goto_10

    :cond_12
    move/from16 v18, v1

    move-wide/from16 v0, p7

    :goto_10
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_13

    const/high16 v1, 0xc00000

    or-int v18, v18, v1

    goto :goto_12

    :cond_13
    const/high16 v1, 0x1c00000

    and-int/2addr v1, v13

    if-nez v1, :cond_15

    move-object/from16 v1, p9

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/high16 v19, 0x800000

    goto :goto_11

    :cond_14
    const/high16 v19, 0x400000

    :goto_11
    or-int v18, v18, v19

    goto :goto_13

    :cond_15
    :goto_12
    move-object/from16 v1, p9

    :goto_13
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_16

    const/high16 v19, 0x6000000

    or-int v18, v18, v19

    move/from16 v2, p10

    goto :goto_15

    :cond_16
    const/high16 v19, 0xe000000

    and-int v19, v13, v19

    move/from16 v2, p10

    if-nez v19, :cond_18

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_17

    const/high16 v3, 0x4000000

    goto :goto_14

    :cond_17
    const/high16 v3, 0x2000000

    :goto_14
    or-int v18, v18, v3

    :cond_18
    :goto_15
    and-int/lit16 v3, v12, 0x200

    if-eqz v3, :cond_19

    const/high16 v19, 0x30000000

    or-int v18, v18, v19

    move-object/from16 v2, p11

    goto :goto_17

    :cond_19
    const/high16 v19, 0x70000000

    and-int v19, v13, v19

    move-object/from16 v2, p11

    if-nez v19, :cond_1b

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x20000000

    goto :goto_16

    :cond_1a
    const/high16 v19, 0x10000000

    :goto_16
    or-int v18, v18, v19

    :cond_1b
    :goto_17
    and-int/lit16 v2, v12, 0x400

    if-eqz v2, :cond_1c

    or-int/lit8 v2, p15, 0x6

    goto :goto_19

    :cond_1c
    and-int/lit8 v2, p15, 0xe

    if-nez v2, :cond_1e

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    goto :goto_18

    :cond_1d
    const/4 v2, 0x2

    :goto_18
    or-int v2, p15, v2

    goto :goto_19

    :cond_1e
    move/from16 v2, p15

    :goto_19
    const v19, 0x5b6db6db

    and-int v5, v18, v19

    const v7, 0x12492492

    if-ne v5, v7, :cond_20

    and-int/lit8 v5, v2, 0xb

    const/4 v7, 0x2

    if-ne v5, v7, :cond_20

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_1a

    .line 2
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object v5, v9

    move-object v15, v11

    move-wide/from16 v8, p7

    move/from16 v11, p10

    goto/16 :goto_25

    .line 3
    :cond_20
    :goto_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v13, 0x1

    const v19, -0x380001

    const v20, -0x70001

    if-eqz v5, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_1b

    .line 4
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_22

    and-int v18, v18, v20

    :cond_22
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_23

    and-int v0, v18, v19

    move-object/from16 v18, p2

    move/from16 v19, p3

    move-wide/from16 v21, p5

    move-wide/from16 v23, p7

    move-object/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v27, p11

    move v6, v0

    move-object/from16 v20, v9

    goto/16 :goto_24

    :cond_23
    move/from16 v19, p3

    move-wide/from16 v21, p5

    move-wide/from16 v23, p7

    move-object/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v27, p11

    move-object/from16 v20, v9

    move/from16 v6, v18

    move-object/from16 v18, p2

    goto/16 :goto_24

    :cond_24
    :goto_1b
    if-eqz v4, :cond_25

    .line 5
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1c

    :cond_25
    move-object/from16 v4, p2

    :goto_1c
    if-eqz v6, :cond_26

    const/4 v5, 0x1

    goto :goto_1d

    :cond_26
    move/from16 v5, p3

    :goto_1d
    if-eqz v8, :cond_27

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    goto :goto_1e

    :cond_27
    move-object v6, v9

    :goto_1e
    and-int/lit8 v8, v12, 0x20

    if-eqz v8, :cond_28

    .line 7
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v9, 0x6

    invoke-virtual {v8, v11, v9}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v8

    and-int v18, v18, v20

    goto :goto_1f

    :cond_28
    move-wide/from16 v8, p5

    :goto_1f
    and-int/lit8 v20, v12, 0x40

    if-eqz v20, :cond_29

    shr-int/lit8 v20, v18, 0xf

    and-int/lit8 v7, v20, 0xe

    .line 8
    invoke-static {v8, v9, v11, v7}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    and-int v18, v18, v19

    goto :goto_20

    :cond_29
    move-wide/from16 v21, p7

    :goto_20
    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_21

    :cond_2a
    move-object/from16 v0, p9

    :goto_21
    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    int-to-float v7, v1

    .line 9
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    goto :goto_22

    :cond_2b
    move/from16 v1, p10

    :goto_22
    if-eqz v3, :cond_2d

    const v3, -0x1d58f75c

    .line 10
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 12
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v3, v7, :cond_2c

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 14
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 15
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v25, v0

    move/from16 v26, v1

    move-object/from16 v27, v3

    goto :goto_23

    :cond_2d
    move-object/from16 v27, p11

    move-object/from16 v25, v0

    move/from16 v26, v1

    :goto_23
    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v6, v18

    move-wide/from16 v23, v21

    move-object/from16 v18, v4

    move-wide/from16 v21, v8

    :goto_24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "androidx.compose.material.Surface (Surface.kt:323)"

    const v1, 0xf9e37f1

    .line 16
    invoke-static {v1, v6, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 17
    :cond_2e
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 18
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v26

    .line 19
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v9, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 20
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v9, v1

    .line 21
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v9, v7

    const v8, -0x52ec04cf

    .line 22
    new-instance v3, Landroidx/compose/material/SurfaceKt$Surface$7;

    move-object v0, v3

    move-object/from16 v1, v18

    move/from16 v16, v2

    move-object/from16 v2, v20

    move-object v15, v3

    move-wide/from16 v3, v21

    move-object/from16 v17, v15

    const/4 v15, 0x1

    move-object/from16 v7, v25

    const v15, -0x52ec04cf

    move/from16 v8, v26

    move-object/from16 v28, v9

    move/from16 v9, p0

    move-object/from16 v10, v27

    move-object v15, v11

    move/from16 v11, v19

    move-object/from16 v12, p1

    move-object/from16 v13, p12

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$7;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v1, v17

    const v0, -0x52ec04cf

    const/4 v2, 0x1

    invoke-static {v15, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, v28

    .line 23
    invoke-static {v2, v0, v15, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2f
    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    .line 24
    :goto_25
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_30

    goto :goto_26

    :cond_30
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$8;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move-object/from16 v29, v14

    move/from16 v14, p14

    move-object/from16 v30, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$8;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v29

    move-object/from16 v0, v30

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_26
    return-void
.end method

.method public static final Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 31
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v14, p12

    move/from16 v13, p14

    move/from16 v12, p16

    const-string/jumbo v0, "onCheckedChange"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4ff6b910

    move-object/from16 v1, p13

    .line 25
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    move/from16 v10, p0

    if-nez v1, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v5, p2

    :goto_6
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v7, v13, 0x1c00

    if-nez v7, :cond_b

    move/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_7

    :cond_a
    const/16 v8, 0x400

    :goto_7
    or-int/2addr v1, v8

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v7, p3

    :goto_9
    and-int/lit8 v8, v12, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    const v9, 0xe000

    and-int/2addr v9, v13

    if-nez v9, :cond_e

    move-object/from16 v9, p4

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_a

    :cond_d
    const/16 v16, 0x2000

    :goto_a
    or-int v1, v1, v16

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v9, p4

    :goto_c
    const/high16 v16, 0x70000

    and-int v16, v13, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v12, 0x20

    move-wide/from16 v2, p5

    if-nez v16, :cond_f

    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_d

    :cond_f
    const/high16 v17, 0x10000

    :goto_d
    or-int v1, v1, v17

    goto :goto_e

    :cond_10
    move-wide/from16 v2, p5

    :goto_e
    const/high16 v17, 0x380000

    and-int v17, v13, v17

    if-nez v17, :cond_12

    and-int/lit8 v17, v12, 0x40

    move/from16 v18, v1

    move-wide/from16 v0, p7

    if-nez v17, :cond_11

    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_11

    const/high16 v19, 0x100000

    goto :goto_f

    :cond_11
    const/high16 v19, 0x80000

    :goto_f
    or-int v18, v18, v19

    goto :goto_10

    :cond_12
    move/from16 v18, v1

    move-wide/from16 v0, p7

    :goto_10
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_13

    const/high16 v1, 0xc00000

    or-int v18, v18, v1

    goto :goto_12

    :cond_13
    const/high16 v1, 0x1c00000

    and-int/2addr v1, v13

    if-nez v1, :cond_15

    move-object/from16 v1, p9

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/high16 v19, 0x800000

    goto :goto_11

    :cond_14
    const/high16 v19, 0x400000

    :goto_11
    or-int v18, v18, v19

    goto :goto_13

    :cond_15
    :goto_12
    move-object/from16 v1, p9

    :goto_13
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_16

    const/high16 v19, 0x6000000

    or-int v18, v18, v19

    move/from16 v2, p10

    goto :goto_15

    :cond_16
    const/high16 v19, 0xe000000

    and-int v19, v13, v19

    move/from16 v2, p10

    if-nez v19, :cond_18

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_17

    const/high16 v3, 0x4000000

    goto :goto_14

    :cond_17
    const/high16 v3, 0x2000000

    :goto_14
    or-int v18, v18, v3

    :cond_18
    :goto_15
    and-int/lit16 v3, v12, 0x200

    if-eqz v3, :cond_19

    const/high16 v19, 0x30000000

    or-int v18, v18, v19

    move-object/from16 v2, p11

    goto :goto_17

    :cond_19
    const/high16 v19, 0x70000000

    and-int v19, v13, v19

    move-object/from16 v2, p11

    if-nez v19, :cond_1b

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x20000000

    goto :goto_16

    :cond_1a
    const/high16 v19, 0x10000000

    :goto_16
    or-int v18, v18, v19

    :cond_1b
    :goto_17
    and-int/lit16 v2, v12, 0x400

    if-eqz v2, :cond_1c

    or-int/lit8 v2, p15, 0x6

    goto :goto_19

    :cond_1c
    and-int/lit8 v2, p15, 0xe

    if-nez v2, :cond_1e

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    goto :goto_18

    :cond_1d
    const/4 v2, 0x2

    :goto_18
    or-int v2, p15, v2

    goto :goto_19

    :cond_1e
    move/from16 v2, p15

    :goto_19
    const v19, 0x5b6db6db

    and-int v5, v18, v19

    const v7, 0x12492492

    if-ne v5, v7, :cond_20

    and-int/lit8 v5, v2, 0xb

    const/4 v7, 0x2

    if-ne v5, v7, :cond_20

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_1a

    .line 26
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object v5, v9

    move-object v15, v11

    move-wide/from16 v8, p7

    move/from16 v11, p10

    goto/16 :goto_25

    .line 27
    :cond_20
    :goto_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v13, 0x1

    const v19, -0x380001

    const v20, -0x70001

    if-eqz v5, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_1b

    .line 28
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_22

    and-int v18, v18, v20

    :cond_22
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_23

    and-int v0, v18, v19

    move-object/from16 v18, p2

    move/from16 v19, p3

    move-wide/from16 v21, p5

    move-wide/from16 v23, p7

    move-object/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v27, p11

    move v6, v0

    move-object/from16 v20, v9

    goto/16 :goto_24

    :cond_23
    move/from16 v19, p3

    move-wide/from16 v21, p5

    move-wide/from16 v23, p7

    move-object/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v27, p11

    move-object/from16 v20, v9

    move/from16 v6, v18

    move-object/from16 v18, p2

    goto/16 :goto_24

    :cond_24
    :goto_1b
    if-eqz v4, :cond_25

    .line 29
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1c

    :cond_25
    move-object/from16 v4, p2

    :goto_1c
    if-eqz v6, :cond_26

    const/4 v5, 0x1

    goto :goto_1d

    :cond_26
    move/from16 v5, p3

    :goto_1d
    if-eqz v8, :cond_27

    .line 30
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    goto :goto_1e

    :cond_27
    move-object v6, v9

    :goto_1e
    and-int/lit8 v8, v12, 0x20

    if-eqz v8, :cond_28

    .line 31
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v9, 0x6

    invoke-virtual {v8, v11, v9}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v8

    and-int v18, v18, v20

    goto :goto_1f

    :cond_28
    move-wide/from16 v8, p5

    :goto_1f
    and-int/lit8 v20, v12, 0x40

    if-eqz v20, :cond_29

    shr-int/lit8 v20, v18, 0xf

    and-int/lit8 v7, v20, 0xe

    .line 32
    invoke-static {v8, v9, v11, v7}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    and-int v18, v18, v19

    goto :goto_20

    :cond_29
    move-wide/from16 v21, p7

    :goto_20
    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_21

    :cond_2a
    move-object/from16 v0, p9

    :goto_21
    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    int-to-float v7, v1

    .line 33
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    goto :goto_22

    :cond_2b
    move/from16 v1, p10

    :goto_22
    if-eqz v3, :cond_2d

    const v3, -0x1d58f75c

    .line 34
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 35
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 36
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v3, v7, :cond_2c

    .line 37
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 38
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 39
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v25, v0

    move/from16 v26, v1

    move-object/from16 v27, v3

    goto :goto_23

    :cond_2d
    move-object/from16 v27, p11

    move-object/from16 v25, v0

    move/from16 v26, v1

    :goto_23
    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v6, v18

    move-wide/from16 v23, v21

    move-object/from16 v18, v4

    move-wide/from16 v21, v8

    :goto_24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "androidx.compose.material.Surface (Surface.kt:440)"

    const v1, 0x4ff6b910

    .line 40
    invoke-static {v1, v6, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 41
    :cond_2e
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 42
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v26

    .line 43
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v9, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 44
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v9, v1

    .line 45
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v9, v7

    const v8, -0x129383b0

    .line 46
    new-instance v3, Landroidx/compose/material/SurfaceKt$Surface$10;

    move-object v0, v3

    move-object/from16 v1, v18

    move/from16 v16, v2

    move-object/from16 v2, v20

    move-object v15, v3

    move-wide/from16 v3, v21

    move-object/from16 v17, v15

    const/4 v15, 0x1

    move-object/from16 v7, v25

    const v15, -0x129383b0

    move/from16 v8, v26

    move-object/from16 v28, v9

    move/from16 v9, p0

    move-object/from16 v10, v27

    move-object v15, v11

    move/from16 v11, v19

    move-object/from16 v12, p1

    move-object/from16 v13, p12

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$10;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v1, v17

    const v0, -0x129383b0

    const/4 v2, 0x1

    invoke-static {v15, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, v28

    .line 47
    invoke-static {v2, v0, v15, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2f
    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    .line 48
    :goto_25
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_30

    goto :goto_26

    :cond_30
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$11;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move-object/from16 v29, v14

    move/from16 v14, p14

    move-object/from16 v30, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$11;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v29

    move-object/from16 v0, v30

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_26
    return-void
.end method

.method public static final synthetic access$surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p5

    move-object v2, p1

    .line 1
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 2
    sget-object p5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p5, p4, p1}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p4

    goto :goto_0

    :cond_0
    sget-object p4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_0
    invoke-interface {p0, p4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 3
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 4
    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    const v0, 0x5d144bf8

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.surfaceColorAtElevation (Surface.kt:632)"

    .line 1
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 2
    :cond_0
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p4, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    and-int/lit8 v0, p5, 0xe

    shr-int/lit8 v1, p5, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p5, p5, 0x380

    or-int v6, v0, p5

    move-object v1, p2

    move-wide v2, p0

    move v4, p3

    move-object v5, p4

    .line 3
    invoke-interface/range {v1 .. v6}, Landroidx/compose/material/ElevationOverlay;->apply-7g2Lkgo(JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    .line 4
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide p0
.end method
