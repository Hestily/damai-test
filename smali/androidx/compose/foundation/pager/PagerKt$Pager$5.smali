.class final Landroidx/compose/foundation/pager/PagerKt$Pager$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerKt;->Pager-wKDqQAw(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $beyondBoundsPageCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $key:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $pageContent:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageCount:I

.field final synthetic $pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize;

.field final synthetic $pageSpacing:F

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;III)V
    .locals 2
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
            ">;III)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$state:Landroidx/compose/foundation/pager/PagerState;

    move v1, p3

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageCount:I

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    move v1, p5

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageSpacing:F

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    move v1, p7

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$beyondBoundsPageCount:I

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move v1, p12

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$userScrollEnabled:Z

    move v1, p13

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$reverseLayout:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$key:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageContent:Lkotlin/jvm/functions/Function3;

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$$changed:I

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$$changed1:I

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 21
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget v3, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageCount:I

    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    iget v5, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageSpacing:F

    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget v7, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$beyondBoundsPageCount:I

    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v10, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-boolean v12, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$userScrollEnabled:Z

    iget-boolean v13, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$reverseLayout:Z

    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$key:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object/from16 p1, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$pageContent:Lkotlin/jvm/functions/Function3;

    move-object/from16 v16, v1

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$5;->$$default:I

    move/from16 v20, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v20}, Landroidx/compose/foundation/pager/PagerKt;->Pager-wKDqQAw(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
