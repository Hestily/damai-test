.class public final Landroidx/compose/foundation/pager/PagerKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final ConsumeHorizontalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ConsumeVerticalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    sput-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeHorizontalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    .line 2
    new-instance v0, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    sput-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeVerticalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    return-void
.end method

.method public static final HorizontalPager-AlbwjTQ(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/pager/PagerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/pager/PageSize;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
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

    move-object/from16 v15, p13

    move/from16 v14, p15

    move/from16 v13, p16

    move/from16 v12, p17

    const-string/jumbo v0, "pageContent"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x209ae04f

    move-object/from16 v1, p14

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v14, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v14, 0xe

    move/from16 v10, p0

    if-nez v1, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v14, 0x70

    if-nez v7, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v8, v14, 0x380

    if-nez v8, :cond_8

    and-int/lit8 v8, v12, 0x4

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v8, p2

    :cond_7
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v1, v9

    goto :goto_6

    :cond_8
    move-object/from16 v8, p2

    :goto_6
    and-int/lit8 v9, v12, 0x8

    const/16 v16, 0x800

    const/16 v17, 0x400

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v2, v14, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v2, p3

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_7

    :cond_a
    const/16 v18, 0x400

    :goto_7
    or-int v1, v1, v18

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v2, p3

    :goto_9
    and-int/lit8 v18, v12, 0x10

    const v19, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v3, p4

    goto :goto_b

    :cond_c
    and-int v20, v14, v19

    move-object/from16 v3, p4

    if-nez v20, :cond_e

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_a

    :cond_d
    const/16 v21, 0x2000

    :goto_a
    or-int v1, v1, v21

    :cond_e
    :goto_b
    and-int/lit8 v21, v12, 0x20

    const/high16 v22, 0x30000

    if-eqz v21, :cond_f

    or-int v1, v1, v22

    move/from16 v5, p5

    goto :goto_d

    :cond_f
    const/high16 v23, 0x70000

    and-int v23, v14, v23

    move/from16 v5, p5

    if-nez v23, :cond_11

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v24, 0x10000

    :goto_c
    or-int v1, v1, v24

    :cond_11
    :goto_d
    and-int/lit8 v24, v12, 0x40

    if-eqz v24, :cond_12

    const/high16 v25, 0x180000

    or-int v1, v1, v25

    move/from16 v6, p6

    goto :goto_f

    :cond_12
    const/high16 v25, 0x380000

    and-int v25, v14, v25

    move/from16 v6, p6

    if-nez v25, :cond_14

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v26, 0x80000

    :goto_e
    or-int v1, v1, v26

    :cond_14
    :goto_f
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v27, 0xc00000

    or-int v1, v1, v27

    move-object/from16 v2, p7

    goto :goto_11

    :cond_15
    const/high16 v27, 0x1c00000

    and-int v27, v14, v27

    move-object/from16 v2, p7

    if-nez v27, :cond_17

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const/high16 v27, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v27, 0x400000

    :goto_10
    or-int v1, v1, v27

    :cond_17
    :goto_11
    const/high16 v27, 0xe000000

    and-int v27, v14, v27

    if-nez v27, :cond_1a

    and-int/lit16 v2, v12, 0x100

    if-nez v2, :cond_18

    move-object/from16 v2, p8

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    const/high16 v27, 0x4000000

    goto :goto_12

    :cond_18
    move-object/from16 v2, p8

    :cond_19
    const/high16 v27, 0x2000000

    :goto_12
    or-int v1, v1, v27

    goto :goto_13

    :cond_1a
    move-object/from16 v2, p8

    :goto_13
    and-int/lit16 v6, v12, 0x200

    if-eqz v6, :cond_1b

    const/high16 v27, 0x30000000

    or-int v1, v1, v27

    goto :goto_15

    :cond_1b
    const/high16 v27, 0x70000000

    and-int v27, v14, v27

    if-nez v27, :cond_1d

    move/from16 v27, v6

    move/from16 v6, p9

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_14
    or-int v1, v1, v28

    goto :goto_16

    :cond_1d
    :goto_15
    move/from16 v27, v6

    move/from16 v6, p9

    :goto_16
    and-int/lit16 v6, v12, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v20, v13, 0x6

    move/from16 v28, v6

    move/from16 v6, p10

    goto :goto_18

    :cond_1e
    and-int/lit8 v28, v13, 0xe

    if-nez v28, :cond_20

    move/from16 v28, v6

    move/from16 v6, p10

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v20, 0x4

    goto :goto_17

    :cond_1f
    const/16 v20, 0x2

    :goto_17
    or-int v20, v13, v20

    goto :goto_18

    :cond_20
    move/from16 v28, v6

    move/from16 v6, p10

    move/from16 v20, v13

    :goto_18
    and-int/lit16 v6, v12, 0x800

    if-eqz v6, :cond_21

    or-int/lit8 v20, v20, 0x30

    move/from16 v29, v6

    move/from16 v2, v20

    move-object/from16 v6, p11

    goto :goto_1b

    :cond_21
    and-int/lit8 v29, v13, 0x70

    if-nez v29, :cond_23

    move/from16 v29, v6

    move-object/from16 v6, p11

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v23, 0x20

    goto :goto_19

    :cond_22
    const/16 v23, 0x10

    :goto_19
    or-int v20, v20, v23

    goto :goto_1a

    :cond_23
    move/from16 v29, v6

    move-object/from16 v6, p11

    :goto_1a
    move/from16 v2, v20

    :goto_1b
    and-int/lit16 v6, v12, 0x1000

    if-eqz v6, :cond_24

    or-int/lit16 v2, v2, 0x80

    :cond_24
    and-int/lit16 v3, v12, 0x2000

    if-eqz v3, :cond_25

    or-int/lit16 v2, v2, 0xc00

    goto :goto_1d

    :cond_25
    and-int/lit16 v3, v13, 0x1c00

    if-nez v3, :cond_27

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_1c

    :cond_26
    const/16 v16, 0x400

    :goto_1c
    or-int v2, v2, v16

    :cond_27
    :goto_1d
    move v3, v2

    const/16 v2, 0x1000

    if-ne v6, v2, :cond_29

    const v2, 0x5b6db6db

    and-int/2addr v2, v1

    const v5, 0x12492492

    if-ne v2, v5, :cond_29

    and-int/lit16 v2, v3, 0x16db

    const/16 v5, 0x492

    if-ne v2, v5, :cond_29

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_1e

    .line 2
    :cond_28
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v22, v11

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p10

    goto/16 :goto_2d

    .line 3
    :cond_29
    :goto_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_2e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_1f

    .line 4
    :cond_2a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_2b

    and-int/lit16 v1, v1, -0x381

    :cond_2b
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_2c

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_2c
    if-eqz v6, :cond_2d

    and-int/lit16 v3, v3, -0x381

    :cond_2d
    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move/from16 v25, p5

    move/from16 v27, p6

    move-object/from16 v28, p7

    move-object/from16 v29, p8

    move/from16 v30, p9

    move/from16 v33, p10

    move-object/from16 v31, p11

    move-object/from16 v32, p12

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_2c

    :cond_2e
    :goto_1f
    if-eqz v4, :cond_2f

    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v2

    goto :goto_20

    :cond_2f
    move-object/from16 v16, v7

    :goto_20
    and-int/lit8 v2, v12, 0x4

    const/4 v7, 0x0

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 6
    invoke-static {v7, v2, v11, v7, v4}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(IFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v2

    and-int/lit16 v1, v1, -0x381

    move/from16 v20, v1

    move-object/from16 v17, v2

    goto :goto_21

    :cond_30
    move/from16 v20, v1

    move-object/from16 v17, v8

    :goto_21
    if-eqz v9, :cond_31

    int-to-float v1, v7

    .line 7
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 8
    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_22

    :cond_31
    move-object/from16 v23, p3

    :goto_22
    if-eqz v18, :cond_32

    .line 9
    sget-object v1, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    move-object/from16 v18, v1

    goto :goto_23

    :cond_32
    move-object/from16 v18, p4

    :goto_23
    if-eqz v21, :cond_33

    const/16 v21, 0x0

    goto :goto_24

    :cond_33
    move/from16 v21, p5

    :goto_24
    if-eqz v24, :cond_34

    int-to-float v1, v7

    .line 10
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move/from16 v24, v1

    goto :goto_25

    :cond_34
    move/from16 v24, p6

    :goto_25
    if-eqz v0, :cond_35

    .line 11
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    goto :goto_26

    :cond_35
    move-object/from16 v0, p7

    :goto_26
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_36

    .line 12
    sget-object v1, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    shr-int/lit8 v2, v20, 0x6

    and-int/lit8 v2, v2, 0xe

    or-int v25, v2, v22

    const/16 v30, 0x1e

    move-object/from16 v2, v17

    move/from16 v31, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move/from16 v32, v6

    move-object v6, v9

    const/16 v33, 0x0

    move-object v7, v11

    move/from16 v8, v25

    move/from16 v9, v30

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v1

    const v2, -0xe000001

    and-int v2, v20, v2

    goto :goto_27

    :cond_36
    move/from16 v31, v3

    move/from16 v32, v6

    const/16 v33, 0x0

    move-object/from16 v1, p8

    move/from16 v2, v20

    :goto_27
    if-eqz v27, :cond_37

    const/4 v3, 0x1

    goto :goto_28

    :cond_37
    move/from16 v3, p9

    :goto_28
    if-eqz v28, :cond_38

    goto :goto_29

    :cond_38
    move/from16 v33, p10

    :goto_29
    if-eqz v29, :cond_39

    const/4 v4, 0x0

    goto :goto_2a

    :cond_39
    move-object/from16 v4, p11

    :goto_2a
    if-eqz v32, :cond_3a

    .line 13
    sget-object v5, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    .line 14
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 15
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v5

    move/from16 v6, v31

    and-int/lit16 v6, v6, -0x381

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move v1, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    goto :goto_2b

    :cond_3a
    move/from16 v6, v31

    move-object/from16 v32, p12

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move v1, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    :goto_2b
    move v3, v6

    move-object/from16 v20, v16

    move/from16 v25, v21

    move/from16 v27, v24

    move-object/from16 v21, v17

    move-object/from16 v24, v18

    :goto_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "androidx.compose.foundation.pager.HorizontalPager (Pager.kt:116)"

    const v2, -0x209ae04f

    .line 16
    invoke-static {v2, v1, v3, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 17
    :cond_3b
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v8, 0x0

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v2, v0, 0xe

    or-int v2, v2, v22

    and-int/lit8 v4, v0, 0x70

    or-int/2addr v2, v4

    shl-int/lit8 v4, v1, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v1, 0x6

    and-int v2, v2, v19

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    shl-int/lit8 v4, v1, 0x3

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    shl-int/lit8 v4, v1, 0x12

    and-int/2addr v2, v4

    or-int v17, v0, v2

    const v0, 0x8000

    shr-int/lit8 v1, v1, 0x18

    and-int/lit8 v2, v1, 0xe

    or-int/2addr v0, v2

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x6

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v18, v0, v1

    const/16 v19, 0x100

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, p0

    move-object/from16 v3, v24

    move/from16 v4, v27

    move/from16 v6, v25

    move-object/from16 v7, v28

    move-object/from16 v9, v23

    move-object/from16 v10, v29

    move-object/from16 v22, v11

    move/from16 v11, v30

    move/from16 v12, v33

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, p13

    move-object/from16 v16, v22

    .line 18
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/pager/PagerKt;->Pager-wKDqQAw(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3c
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move/from16 v10, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move/from16 v11, v33

    .line 19
    :goto_2d
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3d

    goto :goto_2e

    :cond_3d
    new-instance v14, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v34, v14

    move-object/from16 v14, p13

    move-object/from16 v35, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v34

    move-object/from16 v0, v35

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2e
    return-void
.end method

.method public static final Pager-wKDqQAw(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 29
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/pager/PagerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/pager/PageSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/foundation/pager/PagerState;",
            "I",
            "Landroidx/compose/foundation/pager/PageSize;",
            "F",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "I",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p5

    move/from16 v14, p6

    move-object/from16 v13, p9

    move-object/from16 v12, p10

    move/from16 v11, p17

    move/from16 v10, p19

    const-string v2, "modifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "pageSize"

    move-object/from16 v9, p3

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "orientation"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentPadding"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flingBehavior"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "pageNestedScrollConnection"

    move-object/from16 v8, p14

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "pageContent"

    move-object/from16 v7, p15

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x2da4d777

    move-object/from16 v3, p16

    .line 1
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    and-int/lit16 v3, v10, 0x80

    if-eqz v3, :cond_0

    .line 2
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_0

    :cond_0
    move-object/from16 v22, p7

    :goto_0
    and-int/lit16 v3, v10, 0x100

    if-eqz v3, :cond_1

    .line 3
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_1

    :cond_1
    move-object/from16 v23, p8

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "androidx.compose.foundation.pager.Pager (Pager.kt:235)"

    move/from16 v5, p18

    .line 4
    invoke-static {v2, v11, v5, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2

    :cond_2
    move/from16 v5, p18

    :goto_2
    const/4 v2, 0x0

    if-ltz v14, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_10

    .line 5
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v15, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 6
    :goto_4
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 7
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    .line 10
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 p8, v3

    const v3, 0x607fb4c4

    .line 12
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 13
    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    .line 14
    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    .line 15
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    .line 16
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v16, :cond_5

    .line 17
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_6

    .line 18
    :cond_5
    invoke-static {v13, v15, v4}, Landroidx/compose/foundation/pager/PagerKt;->access$calculateContentPaddings(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    .line 19
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 20
    :cond_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 21
    check-cast v3, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v16

    and-int/lit8 v5, v11, 0x70

    const v3, 0x1e7b2b64

    .line 22
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 23
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 24
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_7

    .line 25
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_8

    .line 26
    :cond_7
    new-instance v4, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    invoke-direct {v4, v12, v0}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    .line 27
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 28
    :cond_8
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 29
    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 30
    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    shr-int/lit8 v7, v11, 0x6

    and-int/lit16 v7, v7, 0x380

    const v8, 0x607fb4c4

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 31
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 32
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    or-int v8, v8, v18

    .line 33
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v8

    .line 34
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v3, :cond_a

    .line 35
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v8, v3, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v3, p4

    goto :goto_6

    .line 36
    :cond_a
    :goto_5
    new-instance v8, Landroidx/compose/foundation/pager/PagerKt$Pager$2$1;

    move/from16 v3, p4

    invoke-direct {v8, v2, v0, v3, v9}, Landroidx/compose/foundation/pager/PagerKt$Pager$2$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/pager/PagerState;FLkotlin/coroutines/Continuation;)V

    .line 37
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 38
    :goto_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    or-int/lit16 v9, v5, 0x1000

    or-int/2addr v7, v9

    move-object v9, v2

    move/from16 v10, p8

    move-object/from16 v3, p1

    move/from16 v18, v5

    move-object v5, v8

    move-object v8, v6

    .line 39
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    shr-int/lit8 v2, v11, 0x3

    and-int/lit8 v2, v2, 0xe

    const v3, 0x44faf204

    .line 40
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 41
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 42
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_b

    .line 43
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_c

    .line 44
    :cond_b
    new-instance v4, Landroidx/compose/foundation/pager/PagerKt$Pager$3$1;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v3}, Landroidx/compose/foundation/pager/PagerKt$Pager$3$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 45
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 46
    :cond_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    or-int/lit8 v2, v2, 0x40

    .line 47
    invoke-static {v0, v4, v8, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v2, 0x562a054f

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-eqz p11, :cond_d

    .line 48
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    or-int/lit8 v3, v18, 0x6

    invoke-static {v2, v0, v10, v8, v3}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_7

    .line 49
    :cond_d
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 50
    :goto_7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 51
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v7, -0x64003921

    new-instance v6, Landroidx/compose/foundation/pager/PagerKt$Pager$4;

    move-object v2, v6

    move v3, v10

    move-object v4, v9

    move/from16 v5, p17

    move-object v10, v6

    move/from16 v6, v16

    const v9, -0x64003921

    move/from16 v7, p12

    move-object v0, v8

    move/from16 v8, p4

    const v1, -0x64003921

    move-object/from16 v9, p9

    move-object v1, v10

    move-object/from16 v10, v17

    move/from16 v11, p11

    move/from16 v12, p6

    move-object/from16 v13, v23

    move-object/from16 v14, v22

    move/from16 v15, p18

    move-object/from16 v16, p3

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move-object/from16 v21, p15

    invoke-direct/range {v2 .. v21}, Landroidx/compose/foundation/pager/PagerKt$Pager$4;-><init>(ZLandroidx/compose/ui/unit/Density;IFZFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/foundation/pager/PageSize;Landroidx/compose/foundation/pager/PagerState;ILkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;)V

    const v2, -0x64003921

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    const/16 v8, 0xc00

    const/4 v9, 0x6

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move-object v7, v0

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_f

    goto :goto_8

    :cond_f
    new-instance v14, Landroidx/compose/foundation/pager/PagerKt$Pager$5;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v27, v14

    move-object/from16 v14, p13

    move-object/from16 v28, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/pager/PagerKt$Pager$5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_8
    return-void

    .line 52
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beyondBoundsPageCount should be greater than or equal to 0, you selected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/pager/PagerSnapDistance;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;

    invoke-direct {v0, p0, p2, p1}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/foundation/pager/PagerSnapDistance;)V

    return-object v0
.end method

.method public static final VerticalPager-AlbwjTQ(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/pager/PagerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/pager/PageSize;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
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

    move-object/from16 v15, p13

    move/from16 v14, p15

    move/from16 v13, p16

    move/from16 v12, p17

    const-string/jumbo v0, "pageContent"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x18d3271

    move-object/from16 v1, p14

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v14, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v14, 0xe

    move/from16 v10, p0

    if-nez v1, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v14, 0x70

    if-nez v7, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v8, v14, 0x380

    if-nez v8, :cond_8

    and-int/lit8 v8, v12, 0x4

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v8, p2

    :cond_7
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v1, v9

    goto :goto_6

    :cond_8
    move-object/from16 v8, p2

    :goto_6
    and-int/lit8 v9, v12, 0x8

    const/16 v16, 0x800

    const/16 v17, 0x400

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v2, v14, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v2, p3

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_7

    :cond_a
    const/16 v18, 0x400

    :goto_7
    or-int v1, v1, v18

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v2, p3

    :goto_9
    and-int/lit8 v18, v12, 0x10

    const v19, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v3, p4

    goto :goto_b

    :cond_c
    and-int v20, v14, v19

    move-object/from16 v3, p4

    if-nez v20, :cond_e

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_a

    :cond_d
    const/16 v21, 0x2000

    :goto_a
    or-int v1, v1, v21

    :cond_e
    :goto_b
    and-int/lit8 v21, v12, 0x20

    const/high16 v22, 0x30000

    if-eqz v21, :cond_f

    or-int v1, v1, v22

    move/from16 v5, p5

    goto :goto_d

    :cond_f
    const/high16 v23, 0x70000

    and-int v23, v14, v23

    move/from16 v5, p5

    if-nez v23, :cond_11

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v24, 0x10000

    :goto_c
    or-int v1, v1, v24

    :cond_11
    :goto_d
    and-int/lit8 v24, v12, 0x40

    if-eqz v24, :cond_12

    const/high16 v25, 0x180000

    or-int v1, v1, v25

    move/from16 v6, p6

    goto :goto_f

    :cond_12
    const/high16 v25, 0x380000

    and-int v25, v14, v25

    move/from16 v6, p6

    if-nez v25, :cond_14

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v26, 0x80000

    :goto_e
    or-int v1, v1, v26

    :cond_14
    :goto_f
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v27, 0xc00000

    or-int v1, v1, v27

    move-object/from16 v2, p7

    goto :goto_11

    :cond_15
    const/high16 v27, 0x1c00000

    and-int v27, v14, v27

    move-object/from16 v2, p7

    if-nez v27, :cond_17

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const/high16 v27, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v27, 0x400000

    :goto_10
    or-int v1, v1, v27

    :cond_17
    :goto_11
    const/high16 v27, 0xe000000

    and-int v27, v14, v27

    if-nez v27, :cond_1a

    and-int/lit16 v2, v12, 0x100

    if-nez v2, :cond_18

    move-object/from16 v2, p8

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    const/high16 v27, 0x4000000

    goto :goto_12

    :cond_18
    move-object/from16 v2, p8

    :cond_19
    const/high16 v27, 0x2000000

    :goto_12
    or-int v1, v1, v27

    goto :goto_13

    :cond_1a
    move-object/from16 v2, p8

    :goto_13
    and-int/lit16 v6, v12, 0x200

    if-eqz v6, :cond_1b

    const/high16 v27, 0x30000000

    or-int v1, v1, v27

    goto :goto_15

    :cond_1b
    const/high16 v27, 0x70000000

    and-int v27, v14, v27

    if-nez v27, :cond_1d

    move/from16 v27, v6

    move/from16 v6, p9

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_14
    or-int v1, v1, v28

    goto :goto_16

    :cond_1d
    :goto_15
    move/from16 v27, v6

    move/from16 v6, p9

    :goto_16
    and-int/lit16 v6, v12, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v20, v13, 0x6

    move/from16 v28, v6

    move/from16 v6, p10

    goto :goto_18

    :cond_1e
    and-int/lit8 v28, v13, 0xe

    if-nez v28, :cond_20

    move/from16 v28, v6

    move/from16 v6, p10

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v20, 0x4

    goto :goto_17

    :cond_1f
    const/16 v20, 0x2

    :goto_17
    or-int v20, v13, v20

    goto :goto_18

    :cond_20
    move/from16 v28, v6

    move/from16 v6, p10

    move/from16 v20, v13

    :goto_18
    and-int/lit16 v6, v12, 0x800

    if-eqz v6, :cond_21

    or-int/lit8 v20, v20, 0x30

    move/from16 v29, v6

    move/from16 v2, v20

    move-object/from16 v6, p11

    goto :goto_1b

    :cond_21
    and-int/lit8 v29, v13, 0x70

    if-nez v29, :cond_23

    move/from16 v29, v6

    move-object/from16 v6, p11

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v23, 0x20

    goto :goto_19

    :cond_22
    const/16 v23, 0x10

    :goto_19
    or-int v20, v20, v23

    goto :goto_1a

    :cond_23
    move/from16 v29, v6

    move-object/from16 v6, p11

    :goto_1a
    move/from16 v2, v20

    :goto_1b
    and-int/lit16 v6, v12, 0x1000

    if-eqz v6, :cond_24

    or-int/lit16 v2, v2, 0x80

    :cond_24
    and-int/lit16 v3, v12, 0x2000

    if-eqz v3, :cond_25

    or-int/lit16 v2, v2, 0xc00

    goto :goto_1d

    :cond_25
    and-int/lit16 v3, v13, 0x1c00

    if-nez v3, :cond_27

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_1c

    :cond_26
    const/16 v16, 0x400

    :goto_1c
    or-int v2, v2, v16

    :cond_27
    :goto_1d
    move v3, v2

    const/16 v2, 0x1000

    if-ne v6, v2, :cond_29

    const v2, 0x5b6db6db

    and-int/2addr v2, v1

    const v5, 0x12492492

    if-ne v2, v5, :cond_29

    and-int/lit16 v2, v3, 0x16db

    const/16 v5, 0x492

    if-ne v2, v5, :cond_29

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_1e

    .line 2
    :cond_28
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v22, v11

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p10

    goto/16 :goto_2d

    .line 3
    :cond_29
    :goto_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_2e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_1f

    .line 4
    :cond_2a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_2b

    and-int/lit16 v1, v1, -0x381

    :cond_2b
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_2c

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_2c
    if-eqz v6, :cond_2d

    and-int/lit16 v3, v3, -0x381

    :cond_2d
    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move/from16 v25, p5

    move/from16 v27, p6

    move-object/from16 v28, p7

    move-object/from16 v29, p8

    move/from16 v30, p9

    move/from16 v33, p10

    move-object/from16 v31, p11

    move-object/from16 v32, p12

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_2c

    :cond_2e
    :goto_1f
    if-eqz v4, :cond_2f

    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v2

    goto :goto_20

    :cond_2f
    move-object/from16 v16, v7

    :goto_20
    and-int/lit8 v2, v12, 0x4

    const/4 v7, 0x0

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 6
    invoke-static {v7, v2, v11, v7, v4}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(IFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v2

    and-int/lit16 v1, v1, -0x381

    move/from16 v20, v1

    move-object/from16 v17, v2

    goto :goto_21

    :cond_30
    move/from16 v20, v1

    move-object/from16 v17, v8

    :goto_21
    if-eqz v9, :cond_31

    int-to-float v1, v7

    .line 7
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 8
    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_22

    :cond_31
    move-object/from16 v23, p3

    :goto_22
    if-eqz v18, :cond_32

    .line 9
    sget-object v1, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    move-object/from16 v18, v1

    goto :goto_23

    :cond_32
    move-object/from16 v18, p4

    :goto_23
    if-eqz v21, :cond_33

    const/16 v21, 0x0

    goto :goto_24

    :cond_33
    move/from16 v21, p5

    :goto_24
    if-eqz v24, :cond_34

    int-to-float v1, v7

    .line 10
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move/from16 v24, v1

    goto :goto_25

    :cond_34
    move/from16 v24, p6

    :goto_25
    if-eqz v0, :cond_35

    .line 11
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    goto :goto_26

    :cond_35
    move-object/from16 v0, p7

    :goto_26
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_36

    .line 12
    sget-object v1, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    shr-int/lit8 v2, v20, 0x6

    and-int/lit8 v2, v2, 0xe

    or-int v25, v2, v22

    const/16 v30, 0x1e

    move-object/from16 v2, v17

    move/from16 v31, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move/from16 v32, v6

    move-object v6, v9

    const/16 v33, 0x0

    move-object v7, v11

    move/from16 v8, v25

    move/from16 v9, v30

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v1

    const v2, -0xe000001

    and-int v2, v20, v2

    goto :goto_27

    :cond_36
    move/from16 v31, v3

    move/from16 v32, v6

    const/16 v33, 0x0

    move-object/from16 v1, p8

    move/from16 v2, v20

    :goto_27
    if-eqz v27, :cond_37

    const/4 v3, 0x1

    goto :goto_28

    :cond_37
    move/from16 v3, p9

    :goto_28
    if-eqz v28, :cond_38

    goto :goto_29

    :cond_38
    move/from16 v33, p10

    :goto_29
    if-eqz v29, :cond_39

    const/4 v4, 0x0

    goto :goto_2a

    :cond_39
    move-object/from16 v4, p11

    :goto_2a
    if-eqz v32, :cond_3a

    .line 13
    sget-object v5, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    .line 14
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 15
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v5

    move/from16 v6, v31

    and-int/lit16 v6, v6, -0x381

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move v1, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    goto :goto_2b

    :cond_3a
    move/from16 v6, v31

    move-object/from16 v32, p12

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move v1, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    :goto_2b
    move v3, v6

    move-object/from16 v20, v16

    move/from16 v25, v21

    move/from16 v27, v24

    move-object/from16 v21, v17

    move-object/from16 v24, v18

    :goto_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "androidx.compose.foundation.pager.VerticalPager (Pager.kt:196)"

    const v2, 0x18d3271

    .line 16
    invoke-static {v2, v1, v3, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 17
    :cond_3b
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v7, 0x0

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v2, v0, 0xe

    or-int v2, v2, v22

    and-int/lit8 v4, v0, 0x70

    or-int/2addr v2, v4

    shl-int/lit8 v4, v1, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v1, 0x6

    and-int v2, v2, v19

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    shl-int/lit8 v4, v1, 0x3

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    shl-int/lit8 v4, v1, 0x12

    and-int/2addr v2, v4

    or-int v17, v0, v2

    const v0, 0x8000

    shr-int/lit8 v1, v1, 0x18

    and-int/lit8 v2, v1, 0xe

    or-int/2addr v0, v2

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x6

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v18, v0, v1

    const/16 v19, 0x80

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, p0

    move-object/from16 v3, v24

    move/from16 v4, v27

    move/from16 v6, v25

    move-object/from16 v8, v28

    move-object/from16 v9, v23

    move-object/from16 v10, v29

    move-object/from16 v22, v11

    move/from16 v11, v30

    move/from16 v12, v33

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, p13

    move-object/from16 v16, v22

    .line 18
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/pager/PagerKt;->Pager-wKDqQAw(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3c
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move/from16 v10, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move/from16 v11, v33

    .line 19
    :goto_2d
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3d

    goto :goto_2e

    :cond_3d
    new-instance v14, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$1;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v34, v14

    move-object/from16 v14, p13

    move-object/from16 v35, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$1;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v34

    move-object/from16 v0, v35

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2e
    return-void
.end method

.method public static final synthetic access$SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$calculateContentPaddings(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerKt;->calculateContentPaddings(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getConsumeHorizontalFlingNestedScrollConnection$p()Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeHorizontalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    return-object v0
.end method

.method public static final synthetic access$getConsumeVerticalFlingNestedScrollConnection$p()Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeVerticalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    return-object v0
.end method

.method public static final synthetic access$pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p0

    return p0
.end method

.method private static final calculateContentPaddings(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 4
    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result p0

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p0, p2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p0

    :goto_1
    add-float/2addr v1, p0

    .line 6
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method private static final pagerSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    const v0, 0x59fe4150

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.pager.pagerSemantics (Pager.kt:701)"

    .line 1
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p4, 0x2e20b340

    .line 2
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    .line 4
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p4, v0, :cond_1

    .line 5
    sget-object p4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    invoke-static {p4, p3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 7
    new-instance v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v0, p4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 8
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object p4, v0

    .line 9
    :cond_1
    check-cast p4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 10
    invoke-virtual {p4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 11
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v1, 0x0

    new-instance v2, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;

    invoke-direct {v2, p2, p1, p4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;-><init>(ZLandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method private static final pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollBackward()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/d;->d(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollForward()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/d;->d(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
