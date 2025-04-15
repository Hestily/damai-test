.class public final Landroidx/compose/foundation/lazy/LazyListKt;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static final LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 33
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "ZI",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p12

    move/from16 v10, p14

    move/from16 v9, p15

    move/from16 v8, p16

    const-string v2, "modifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentPadding"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flingBehavior"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x25001c13

    move-object/from16 v3, p13

    .line 1
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0xe

    if-nez v3, :cond_2

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, v8, 0x2

    const/16 v16, 0x20

    const/16 v17, 0x10

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v10, 0x70

    if-nez v6, :cond_5

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v8, 0x4

    const/16 v18, 0x100

    const/16 v19, 0x80

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v10, 0x380

    if-nez v6, :cond_8

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v3, v6

    :cond_8
    :goto_5
    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v10, 0x1c00

    if-nez v6, :cond_b

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v3, v6

    :cond_b
    :goto_7
    and-int/lit8 v6, v8, 0x10

    const v20, 0xe000

    if-eqz v6, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_9

    :cond_c
    and-int v6, v10, v20

    if-nez v6, :cond_e

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v3, v6

    :cond_e
    :goto_9
    and-int/lit8 v6, v8, 0x20

    const/high16 v21, 0x70000

    if-eqz v6, :cond_f

    const/high16 v6, 0x30000

    :goto_a
    or-int/2addr v3, v6

    goto :goto_b

    :cond_f
    and-int v6, v10, v21

    if-nez v6, :cond_11

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/high16 v6, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v6, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v6, v8, 0x40

    const/high16 v22, 0x380000

    if-eqz v6, :cond_12

    const/high16 v6, 0x180000

    or-int/2addr v3, v6

    goto :goto_d

    :cond_12
    and-int v6, v10, v22

    if-nez v6, :cond_14

    move/from16 v6, p6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_13

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v23, 0x80000

    :goto_c
    or-int v3, v3, v23

    goto :goto_e

    :cond_14
    :goto_d
    move/from16 v6, p6

    :goto_e
    and-int/lit16 v4, v8, 0x80

    if-eqz v4, :cond_15

    const/high16 v23, 0xc00000

    or-int v3, v3, v23

    move/from16 v5, p7

    goto :goto_10

    :cond_15
    const/high16 v23, 0x1c00000

    and-int v23, v10, v23

    move/from16 v5, p7

    if-nez v23, :cond_17

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_16

    const/high16 v24, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v24, 0x400000

    :goto_f
    or-int v3, v3, v24

    :cond_17
    :goto_10
    and-int/lit16 v2, v8, 0x100

    if-eqz v2, :cond_18

    const/high16 v25, 0x6000000

    or-int v3, v3, v25

    move-object/from16 v5, p8

    goto :goto_12

    :cond_18
    const/high16 v25, 0xe000000

    and-int v25, v10, v25

    move-object/from16 v5, p8

    if-nez v25, :cond_1a

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    const/high16 v25, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v25, 0x2000000

    :goto_11
    or-int v3, v3, v25

    :cond_1a
    :goto_12
    and-int/lit16 v5, v8, 0x200

    if-eqz v5, :cond_1b

    const/high16 v25, 0x30000000

    or-int v3, v3, v25

    move-object/from16 v6, p9

    goto :goto_14

    :cond_1b
    const/high16 v25, 0x70000000

    and-int v25, v10, v25

    move-object/from16 v6, p9

    if-nez v25, :cond_1d

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c

    const/high16 v25, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v25, 0x10000000

    :goto_13
    or-int v3, v3, v25

    :cond_1d
    :goto_14
    and-int/lit16 v6, v8, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v23, v9, 0x6

    move-object/from16 v10, p10

    goto :goto_16

    :cond_1e
    and-int/lit8 v25, v9, 0xe

    move-object/from16 v10, p10

    if-nez v25, :cond_20

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    const/16 v23, 0x4

    goto :goto_15

    :cond_1f
    const/16 v23, 0x2

    :goto_15
    or-int v23, v9, v23

    goto :goto_16

    :cond_20
    move/from16 v23, v9

    :goto_16
    and-int/lit16 v10, v8, 0x800

    if-eqz v10, :cond_21

    or-int/lit8 v23, v23, 0x30

    goto :goto_18

    :cond_21
    and-int/lit8 v25, v9, 0x70

    move-object/from16 v12, p11

    if-nez v25, :cond_23

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    goto :goto_17

    :cond_22
    const/16 v16, 0x10

    :goto_17
    or-int v23, v23, v16

    :cond_23
    :goto_18
    move/from16 v12, v23

    and-int/lit16 v14, v8, 0x1000

    if-eqz v14, :cond_24

    or-int/lit16 v12, v12, 0x180

    goto :goto_1a

    :cond_24
    and-int/lit16 v14, v9, 0x380

    if-nez v14, :cond_26

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    goto :goto_19

    :cond_25
    const/16 v18, 0x80

    :goto_19
    or-int v12, v12, v18

    :cond_26
    :goto_1a
    const v14, 0x5b6db6db

    and-int/2addr v14, v3

    const v8, 0x12492492

    if-ne v14, v8, :cond_28

    and-int/lit16 v8, v12, 0x2db

    const/16 v14, 0x92

    if-ne v8, v14, :cond_28

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_27

    goto :goto_1b

    .line 2
    :cond_27
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v15, p3

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v25, p10

    move-object/from16 v12, p11

    move-object v14, v1

    move-object v11, v7

    goto/16 :goto_22

    :cond_28
    :goto_1b
    if-eqz v4, :cond_29

    const/4 v4, 0x0

    const/16 v18, 0x0

    goto :goto_1c

    :cond_29
    move/from16 v18, p7

    :goto_1c
    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    move-object/from16 v19, v4

    goto :goto_1d

    :cond_2a
    move-object/from16 v19, p8

    :goto_1d
    if-eqz v5, :cond_2b

    move-object/from16 v23, v4

    goto :goto_1e

    :cond_2b
    move-object/from16 v23, p9

    :goto_1e
    if-eqz v6, :cond_2c

    move-object/from16 v25, v4

    goto :goto_1f

    :cond_2c
    move-object/from16 v25, p10

    :goto_1f
    if-eqz v10, :cond_2d

    move-object/from16 v26, v4

    goto :goto_20

    :cond_2d
    move-object/from16 v26, p11

    .line 3
    :goto_20
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:49)"

    const v4, 0x25001c13

    .line 4
    invoke-static {v4, v3, v12, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 5
    :cond_2e
    sget-object v14, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v10, 0x6

    invoke-virtual {v14, v7, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->overscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v8

    shr-int/lit8 v6, v3, 0x3

    and-int/lit8 v2, v6, 0xe

    shr-int/lit8 v4, v12, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v2

    .line 6
    invoke-static {v0, v11, v7, v4}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt;->rememberLazyListItemProvider(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListItemProvider;

    move-result-object v5

    and-int/lit16 v4, v6, 0x380

    or-int/2addr v2, v4

    and-int/lit16 v4, v6, 0x1c00

    or-int v16, v2, v4

    move-object/from16 v2, p1

    move v4, v3

    move-object v3, v5

    move v1, v4

    move/from16 v4, p3

    move-object/from16 p7, v5

    move/from16 v5, p4

    move/from16 v17, v6

    move-object v6, v7

    move-object v15, v7

    move/from16 v7, v16

    .line 7
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazySemanticsKt;->rememberLazyListSemanticState(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v24

    const v2, -0x1d58f75c

    .line 8
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 9
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 10
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_2f

    .line 11
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    invoke-direct {v2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;-><init>()V

    .line 12
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 13
    :cond_2f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 14
    move-object/from16 v27, v2

    check-cast v27, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    const v2, 0x2e20b340

    .line 15
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 17
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_30

    .line 18
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 19
    invoke-static {v2, v15}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 20
    new-instance v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v4, v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 21
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v4

    .line 22
    :cond_30
    check-cast v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 23
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 24
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x1e7b2b64

    .line 25
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 26
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v5

    .line 27
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_31

    .line 28
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_32

    .line 29
    :cond_31
    new-instance v5, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    invoke-direct {v5, v2, v13}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;-><init>(Lkotlinx/coroutines/CoroutineScope;Z)V

    .line 30
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 31
    :cond_32
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 32
    move-object v7, v5

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 33
    invoke-virtual {v0, v7}, Landroidx/compose/foundation/lazy/LazyListState;->setPlacementAnimator$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)V

    and-int/lit8 v6, v1, 0x70

    .line 34
    sget v28, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    shl-int/lit8 v2, v28, 0x6

    or-int/2addr v2, v6

    shl-int/lit8 v3, v1, 0x3

    and-int/lit16 v4, v3, 0x1c00

    or-int/2addr v2, v4

    and-int v4, v3, v20

    or-int/2addr v2, v4

    and-int v3, v3, v21

    or-int/2addr v2, v3

    and-int v3, v17, v22

    or-int/2addr v2, v3

    const/high16 v3, 0x1c00000

    and-int v3, v17, v3

    or-int/2addr v2, v3

    const/high16 v3, 0xe000000

    shl-int/lit8 v4, v12, 0x18

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/high16 v3, 0x70000000

    and-int/2addr v3, v4

    or-int v16, v2, v3

    shr-int/lit8 v2, v1, 0x1b

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v17, v2, 0x40

    const/16 v21, 0x0

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move-object/from16 v4, v27

    move-object/from16 v5, p2

    move v12, v6

    move/from16 v6, p3

    move-object/from16 v22, v7

    move/from16 v7, p4

    move/from16 p8, v1

    move-object v1, v8

    move/from16 v8, v18

    move-object/from16 v9, v19

    const/16 v29, 0x6

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 p9, v1

    move v1, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v22

    move-object/from16 v30, v14

    move-object v14, v15

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v21

    .line 35
    invoke-static/range {v2 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/runtime/Composer;III)Lkotlin/jvm/functions/Function2;

    move-result-object v10

    move-object/from16 v12, p7

    move-object v11, v0

    move-object/from16 v0, p1

    .line 36
    invoke-static {v12, v0, v11, v1}, Landroidx/compose/foundation/lazy/LazyListKt;->ScrollPositionUpdater(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    if-eqz p4, :cond_33

    .line 37
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_21

    :cond_33
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_21
    move-object v13, v2

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v2

    move-object/from16 v14, p0

    move/from16 v15, p8

    invoke-interface {v14, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shr-int/lit8 v2, v15, 0x6

    and-int v9, v2, v20

    move-object v4, v12

    move-object/from16 v5, v24

    move-object v6, v13

    move/from16 v7, p6

    move-object v8, v11

    .line 40
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 41
    invoke-static {v2, v13}, Landroidx/compose/foundation/ClipScrollableContainerKt;->clipScrollableContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    shl-int/lit8 v3, v28, 0x6

    or-int/2addr v1, v3

    and-int/lit16 v3, v15, 0x1c00

    or-int v8, v1, v3

    move-object/from16 v3, p1

    move-object/from16 v4, v27

    move/from16 v5, p3

    move-object v7, v11

    .line 42
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->lazyListBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v5, p9

    .line 43
    invoke-static {v1, v5}, Landroidx/compose/foundation/OverscrollKt;->overscroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 44
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 45
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 v15, p3

    move-object/from16 v3, v30

    .line 46
    invoke-virtual {v3, v1, v13, v15}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v7

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    move-object/from16 v3, p1

    move-object v4, v13

    move/from16 v6, p6

    move-object/from16 v8, p5

    .line 48
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    move-object v6, v10

    move-object v7, v11

    .line 50
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34
    move/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v23

    move-object/from16 v12, v26

    .line 51
    :goto_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_35

    goto :goto_23

    :cond_35
    new-instance v11, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v15, v11

    move-object/from16 v11, v25

    move-object v14, v13

    move-object/from16 v13, p12

    move-object/from16 v31, v14

    move/from16 v14, p14

    move-object/from16 v32, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_23
    return-void
.end method

.method private static final ScrollPositionUpdater(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    const v0, 0x306dc6

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
    and-int/lit8 v1, v1, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 2
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 3
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.ScrollPositionUpdater (LazyList.kt:141)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 4
    :cond_6
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 5
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 6
    :cond_8
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public static final synthetic access$ScrollPositionUpdater(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListKt;->ScrollPositionUpdater(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method private static final rememberLazyListMeasurePolicy(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/runtime/Composer;III)Lkotlin/jvm/functions/Function2;
    .locals 20
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZI",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "Landroidx/compose/runtime/Composer;",
            "III)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p12

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    const v4, -0x3996bbe7

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit16 v5, v3, 0x80

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object/from16 v5, p7

    :goto_0
    and-int/lit16 v7, v3, 0x100

    if-eqz v7, :cond_1

    move-object v15, v6

    goto :goto_1

    :cond_1
    move-object/from16 v15, p8

    :goto_1
    and-int/lit16 v7, v3, 0x200

    if-eqz v7, :cond_2

    move-object v14, v6

    goto :goto_2

    :cond_2
    move-object/from16 v14, p9

    :goto_2
    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_3

    move-object v13, v6

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    .line 1
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "androidx.compose.foundation.lazy.rememberLazyListMeasurePolicy (LazyList.kt:152)"

    .line 2
    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    and-int/lit8 v3, v1, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-le v3, v4, :cond_5

    move-object/from16 v3, p1

    .line 3
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_5
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v8, v1, 0x30

    if-ne v8, v4, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    and-int/lit16 v8, v1, 0x380

    xor-int/lit16 v8, v8, 0x180

    const/16 v9, 0x100

    move-object/from16 v12, p2

    if-le v8, v9, :cond_8

    .line 4
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    and-int/lit16 v8, v1, 0x180

    if-ne v8, v9, :cond_a

    :cond_9
    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    or-int/2addr v4, v8

    and-int/lit16 v8, v1, 0x1c00

    xor-int/lit16 v8, v8, 0xc00

    const/16 v9, 0x800

    move-object/from16 v10, p3

    if-le v8, v9, :cond_b

    .line 5
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    and-int/lit16 v8, v1, 0xc00

    if-ne v8, v9, :cond_d

    :cond_c
    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    or-int/2addr v4, v8

    const v8, 0xe000

    and-int/2addr v8, v1

    xor-int/lit16 v8, v8, 0x6000

    const/16 v9, 0x4000

    move/from16 v11, p4

    if-le v8, v9, :cond_e

    .line 6
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    and-int/lit16 v8, v1, 0x6000

    if-ne v8, v9, :cond_10

    :cond_f
    const/4 v8, 0x1

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v4, v8

    const/high16 v8, 0x70000

    and-int/2addr v8, v1

    const/high16 v9, 0x30000

    xor-int/2addr v8, v9

    const/high16 v6, 0x20000

    if-le v8, v6, :cond_11

    move/from16 v8, p5

    .line 7
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-nez v16, :cond_12

    goto :goto_9

    :cond_11
    move/from16 v8, p5

    :goto_9
    and-int/2addr v9, v1

    if-ne v9, v6, :cond_13

    :cond_12
    const/4 v6, 0x1

    goto :goto_a

    :cond_13
    const/4 v6, 0x0

    :goto_a
    or-int/2addr v4, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v1

    const/high16 v9, 0xc00000

    xor-int/2addr v6, v9

    const/high16 v7, 0x800000

    if-le v6, v7, :cond_14

    .line 8
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    :cond_14
    and-int v6, v1, v9

    if-ne v6, v7, :cond_16

    :cond_15
    const/4 v6, 0x1

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    :goto_b
    or-int/2addr v4, v6

    const/high16 v6, 0xe000000

    and-int/2addr v6, v1

    const/high16 v7, 0x6000000

    xor-int/2addr v6, v7

    const/high16 v9, 0x4000000

    if-le v6, v9, :cond_17

    .line 9
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    :cond_17
    and-int v6, v1, v7

    if-ne v6, v9, :cond_19

    :cond_18
    const/4 v6, 0x1

    goto :goto_c

    :cond_19
    const/4 v6, 0x0

    :goto_c
    or-int/2addr v4, v6

    const/high16 v6, 0x70000000

    and-int/2addr v6, v1

    const/high16 v7, 0x30000000

    xor-int/2addr v6, v7

    const/high16 v9, 0x20000000

    if-le v6, v9, :cond_1a

    .line 10
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    :cond_1a
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    goto :goto_d

    :cond_1c
    const/4 v1, 0x0

    :goto_d
    or-int/2addr v1, v4

    and-int/lit8 v4, v2, 0xe

    xor-int/lit8 v4, v4, 0x6

    const/4 v6, 0x4

    if-le v4, v6, :cond_1d

    .line 11
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_1d
    and-int/lit8 v2, v2, 0x6

    if-ne v2, v6, :cond_1f

    :cond_1e
    const/4 v6, 0x1

    goto :goto_e

    :cond_1f
    const/4 v6, 0x0

    :goto_e
    or-int/2addr v1, v6

    move-object/from16 v2, p11

    .line 12
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 13
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_20

    .line 14
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_21

    .line 15
    :cond_20
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    move-object v7, v4

    move/from16 v8, p5

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p1

    move-object/from16 v12, p0

    move-object v6, v15

    move-object/from16 v15, p11

    move-object/from16 v16, p2

    move/from16 v17, p6

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-direct/range {v7 .. v19}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V

    .line 16
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 17
    :cond_21
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v4
.end method
