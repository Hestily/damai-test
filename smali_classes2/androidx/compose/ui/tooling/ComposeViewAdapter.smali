.class public final Landroidx/compose/ui/tooling/ComposeViewAdapter;
.super Landroid/widget/FrameLayout;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;,
        Landroidx/compose/ui/tooling/ComposeViewAdapter$RememberSearch;,
        Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimateXAsStateSearch;,
        Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimateContentSizeSearch;,
        Landroidx/compose/ui/tooling/ComposeViewAdapter$TransitionSearch;,
        Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimatedVisibilitySearch;,
        Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimatedContentSearch;
    }
.end annotation


# instance fields
.field private final FakeActivityResultRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final FakeOnBackPressedDispatcherOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final FakeViewModelStoreOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public clock:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

.field private composableName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final composeView:Landroidx/compose/ui/platform/ComposeView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private composition:Landroidx/compose/runtime/Composition;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final content:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final debugBoundsPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private debugPaintBounds:Z

.field private debugViewInfos:Z

.field private final delayedException:Landroidx/compose/ui/tooling/ThreadSafeException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private designInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private designInfoProvidersArgument:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private forceCompositionInvalidation:Z

.field private hasAnimations:Z

.field private lookForDesignInfoProviders:Z

.field private onDraw:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previewComposition:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final slotTableRecord:Landroidx/compose/ui/tooling/CompositionDataRecord;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ComposeViewAdapter"

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->TAG:Ljava/lang/String;

    .line 3
    new-instance p1, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->viewInfos:Ljava/util/List;

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoList:Ljava/util/List;

    .line 6
    sget-object p1, Landroidx/compose/ui/tooling/CompositionDataRecord;->Companion:Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;->create()Landroidx/compose/ui/tooling/CompositionDataRecord;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->slotTableRecord:Landroidx/compose/ui/tooling/CompositionDataRecord;

    const-string p1, ""

    .line 7
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composableName:Ljava/lang/String;

    .line 8
    new-instance v0, Landroidx/compose/ui/tooling/ThreadSafeException;

    invoke-direct {v0}, Landroidx/compose/ui/tooling/ThreadSafeException;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->delayedException:Landroidx/compose/ui/tooling/ThreadSafeException;

    sget-object v0, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->INSTANCE:Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->getLambda-2$ui_tooling_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->previewComposition:Lkotlin/jvm/functions/Function2;

    .line 9
    invoke-static {}, Landroidx/compose/ui/tooling/ComposeViewAdapterKt;->access$getEmptyContent$p()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->content:Landroidx/compose/runtime/MutableState;

    .line 10
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoProvidersArgument:Ljava/lang/String;

    .line 11
    sget-object p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$onDraw$1;->INSTANCE:Landroidx/compose/ui/tooling/ComposeViewAdapter$onDraw$1;

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->onDraw:Lkotlin/jvm/functions/Function0;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 14
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getRed-0d7_KjU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugBoundsPaint:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    invoke-direct {p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    .line 18
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;

    invoke-direct {p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeViewModelStoreOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;

    .line 19
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeOnBackPressedDispatcherOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;

    .line 20
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;

    invoke-direct {p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeActivityResultRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;

    .line 21
    invoke-direct {p0, p2}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->init(Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "ComposeViewAdapter"

    .line 23
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->TAG:Ljava/lang/String;

    .line 24
    new-instance p1, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->viewInfos:Ljava/util/List;

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoList:Ljava/util/List;

    .line 27
    sget-object p1, Landroidx/compose/ui/tooling/CompositionDataRecord;->Companion:Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;->create()Landroidx/compose/ui/tooling/CompositionDataRecord;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->slotTableRecord:Landroidx/compose/ui/tooling/CompositionDataRecord;

    const-string p1, ""

    .line 28
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composableName:Ljava/lang/String;

    .line 29
    new-instance p3, Landroidx/compose/ui/tooling/ThreadSafeException;

    invoke-direct {p3}, Landroidx/compose/ui/tooling/ThreadSafeException;-><init>()V

    iput-object p3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->delayedException:Landroidx/compose/ui/tooling/ThreadSafeException;

    sget-object p3, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->INSTANCE:Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;

    invoke-virtual {p3}, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->getLambda-2$ui_tooling_release()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->previewComposition:Lkotlin/jvm/functions/Function2;

    .line 30
    invoke-static {}, Landroidx/compose/ui/tooling/ComposeViewAdapterKt;->access$getEmptyContent$p()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p3, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->content:Landroidx/compose/runtime/MutableState;

    .line 31
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoProvidersArgument:Ljava/lang/String;

    .line 32
    sget-object p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$onDraw$1;->INSTANCE:Landroidx/compose/ui/tooling/ComposeViewAdapter$onDraw$1;

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->onDraw:Lkotlin/jvm/functions/Function0;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 34
    new-instance p3, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 35
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    sget-object p3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Color$Companion;->getRed-0d7_KjU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugBoundsPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    invoke-direct {p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    .line 39
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;

    invoke-direct {p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeViewModelStoreOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;

    .line 40
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeOnBackPressedDispatcherOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;

    .line 41
    new-instance p1, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;

    invoke-direct {p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeActivityResultRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;

    .line 42
    invoke-direct {p0, p2}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->init(Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
    .end array-data
.end method

.method private final WrapPreview(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const v0, 0x1d6a9dad

    .line 1
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.ui.tooling.ComposeViewAdapter.WrapPreview (ComposeViewAdapter.kt:639)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    const/4 v1, 0x0

    .line 2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/tooling/LayoutlibFontResourceLoader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroidx/compose/ui/tooling/LayoutlibFontResourceLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;->createFontFamilyResolver(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 4
    sget-object v3, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    iget-object v4, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeOnBackPressedDispatcherOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeOnBackPressedDispatcherOwner$1;

    invoke-virtual {v3, v4}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->provides(Landroidx/activity/OnBackPressedDispatcherOwner;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 5
    sget-object v3, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->INSTANCE:Landroidx/activity/compose/LocalActivityResultRegistryOwner;

    iget-object v4, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeActivityResultRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeActivityResultRegistryOwner$1;

    invoke-virtual {v3, v4}, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->provides(Landroidx/activity/result/ActivityResultRegistryOwner;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    aput-object v3, v0, v1

    const v1, -0x75307f13

    .line 6
    new-instance v3, Landroidx/compose/ui/tooling/ComposeViewAdapter$WrapPreview$1;

    invoke-direct {v3, p0, p1, p3}, Landroidx/compose/ui/tooling/ComposeViewAdapter$WrapPreview$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;Lkotlin/jvm/functions/Function2;I)V

    invoke-static {p2, v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    const/16 v2, 0x38

    .line 7
    invoke-static {v0, v1, p2, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/compose/ui/tooling/ComposeViewAdapter$WrapPreview$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/ui/tooling/ComposeViewAdapter$WrapPreview$2;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$WrapPreview(Landroidx/compose/ui/tooling/ComposeViewAdapter;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->WrapPreview(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$firstOrNull(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/tooling/data/Group;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->firstOrNull(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDelayedException$p(Landroidx/compose/ui/tooling/ComposeViewAdapter;)Landroidx/compose/ui/tooling/ThreadSafeException;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->delayedException:Landroidx/compose/ui/tooling/ThreadSafeException;

    return-object p0
.end method

.method public static final synthetic access$getDesignInfoMethodOrNull(Landroidx/compose/ui/tooling/ComposeViewAdapter;Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->getDesignInfoMethodOrNull(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFakeSavedStateRegistryOwner$p(Landroidx/compose/ui/tooling/ComposeViewAdapter;)Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    return-object p0
.end method

.method public static final synthetic access$getSlotTableRecord$p(Landroidx/compose/ui/tooling/ComposeViewAdapter;)Landroidx/compose/ui/tooling/CompositionDataRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->slotTableRecord:Landroidx/compose/ui/tooling/CompositionDataRecord;

    return-object p0
.end method

.method private final findAll(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Group;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->findGroupsThatMatchPredicate$default(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final findAndTrackAnimations()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->slotTableRecord:Landroidx/compose/ui/tooling/CompositionDataRecord;

    invoke-interface {v0}, Landroidx/compose/ui/tooling/CompositionDataRecord;->getStore()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Landroidx/compose/runtime/tooling/CompositionData;

    .line 5
    invoke-static {v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->asTree(Landroidx/compose/runtime/tooling/CompositionData;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroidx/compose/ui/tooling/ComposeViewAdapter$TransitionSearch;

    new-instance v2, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$transitionSearch$1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$transitionSearch$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    invoke-direct {v0, p0, v2}, Landroidx/compose/ui/tooling/ComposeViewAdapter$TransitionSearch;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;Lkotlin/jvm/functions/Function1;)V

    .line 7
    new-instance v2, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimatedContentSearch;

    .line 8
    new-instance v3, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$animatedContentSearch$1;

    invoke-direct {v3, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$animatedContentSearch$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    .line 9
    invoke-direct {v2, p0, v3}, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimatedContentSearch;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;Lkotlin/jvm/functions/Function1;)V

    .line 10
    new-instance v3, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimatedVisibilitySearch;

    new-instance v4, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$animatedVisibilitySearch$1;

    invoke-direct {v4, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$animatedVisibilitySearch$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    invoke-direct {v3, p0, v4}, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimatedVisibilitySearch;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;Lkotlin/jvm/functions/Function1;)V

    const/4 v4, 0x2

    new-array v5, v4, [Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v3, v5, v7

    .line 11
    invoke-static {v5}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 12
    sget-object v8, Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation;->Companion:Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation$Companion;->getApiAvailable()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x6

    new-array v8, v8, [Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;

    aput-object v2, v8, v6

    .line 13
    new-instance v9, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimateXAsStateSearch;

    .line 14
    new-instance v10, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$1;

    invoke-direct {v10, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    .line 15
    invoke-direct {v9, p0, v10}, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimateXAsStateSearch;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;Lkotlin/jvm/functions/Function1;)V

    aput-object v9, v8, v7

    .line 16
    new-instance v9, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimateContentSizeSearch;

    .line 17
    new-instance v10, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$2;

    invoke-direct {v10, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$2;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    .line 18
    invoke-direct {v9, v10}, Landroidx/compose/ui/tooling/ComposeViewAdapter$AnimateContentSizeSearch;-><init>(Lkotlin/jvm/functions/Function1;)V

    aput-object v9, v8, v4

    const/4 v4, 0x3

    .line 19
    new-instance v9, Landroidx/compose/ui/tooling/ComposeViewAdapter$RememberSearch;

    const-class v10, Landroidx/compose/animation/core/TargetBasedAnimation;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 20
    new-instance v11, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$3;

    invoke-direct {v11, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$3;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    .line 21
    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/tooling/ComposeViewAdapter$RememberSearch;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    aput-object v9, v8, v4

    const/4 v4, 0x4

    .line 22
    new-instance v9, Landroidx/compose/ui/tooling/ComposeViewAdapter$RememberSearch;

    const-class v10, Landroidx/compose/animation/core/DecayAnimation;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 23
    new-instance v11, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$4;

    invoke-direct {v11, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$4;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    .line 24
    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/tooling/ComposeViewAdapter$RememberSearch;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    aput-object v9, v8, v4

    const/4 v4, 0x5

    .line 25
    new-instance v9, Landroidx/compose/ui/tooling/ComposeViewAdapter$RememberSearch;

    const-class v10, Landroidx/compose/animation/core/InfiniteTransition;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 26
    new-instance v11, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$5;

    invoke-direct {v11, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$extraSearch$5;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    .line 27
    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/tooling/ComposeViewAdapter$RememberSearch;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    aput-object v9, v8, v4

    .line 28
    invoke-static {v8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    goto :goto_1

    .line 29
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 30
    :goto_1
    invoke-static {v5, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 31
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/tooling/data/Group;

    .line 33
    sget-object v9, Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$1$treeWithLocation$1;->INSTANCE:Landroidx/compose/ui/tooling/ComposeViewAdapter$findAndTrackAnimations$1$treeWithLocation$1;

    invoke-direct {p0, v8, v9}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->findAll(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v8

    .line 34
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;

    .line 35
    invoke-virtual {v10, v8}, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;->parse(Ljava/util/Collection;)V

    goto :goto_3

    .line 36
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;->getAnimations()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;->getAnimations()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;->getAnimations()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v2}, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;->getAnimations()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 38
    :cond_3
    instance-of v0, v4, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    .line 39
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;

    .line 40
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;->hasAnimations()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    :cond_6
    :goto_4
    iput-boolean v6, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->hasAnimations:Z

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->clock:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    if-eqz v0, :cond_7

    .line 42
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;

    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ComposeViewAdapter$Search;->track()V

    goto :goto_5

    :cond_7
    return-void
.end method

.method private final findDesignInfoProviders()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->slotTableRecord:Landroidx/compose/ui/tooling/CompositionDataRecord;

    invoke-interface {v0}, Landroidx/compose/ui/tooling/CompositionDataRecord;->getStore()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Landroidx/compose/runtime/tooling/CompositionData;

    .line 5
    invoke-static {v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->asTree(Landroidx/compose/runtime/tooling/CompositionData;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Landroidx/compose/ui/tooling/data/Group;

    .line 9
    new-instance v3, Landroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1;

    invoke-direct {v3, p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1;-><init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->findAll(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 12
    check-cast v4, Landroidx/compose/ui/tooling/data/Group;

    .line 13
    invoke-virtual {v4}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object v5

    .line 14
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/tooling/data/Group;

    .line 15
    invoke-virtual {v6}, Landroidx/compose/ui/tooling/data/Group;->getData()Ljava/util/Collection;

    move-result-object v6

    .line 16
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 17
    invoke-direct {p0, v8}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->getDesignInfoMethodOrNull(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v9

    goto :goto_3

    :cond_4
    move-object v9, v7

    :goto_3
    if-eqz v9, :cond_3

    .line 18
    invoke-virtual {v4}, Landroidx/compose/ui/tooling/data/Group;->getBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroidx/compose/ui/tooling/data/Group;->getBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v4

    invoke-direct {p0, v8, v5, v4}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->invokeGetDesignInfo(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    :cond_5
    if-eqz v7, :cond_1

    .line 19
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 21
    :cond_7
    iput-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoList:Ljava/util/List;

    return-void
.end method

.method private final findGroupsThatMatchPredicate(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Group;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/compose/ui/tooling/data/Group;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/tooling/data/Group;

    .line 5
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic findGroupsThatMatchPredicate$default(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->findGroupsThatMatchPredicate(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final synthetic findRememberCall(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/compose/ui/tooling/data/Group;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Landroidx/compose/ui/tooling/data/Group;

    .line 4
    sget-object v2, Landroidx/compose/ui/tooling/ComposeViewAdapter$findRememberCall$rememberCalls$1$1;->INSTANCE:Landroidx/compose/ui/tooling/ComposeViewAdapter$findRememberCall$rememberCalls$1$1;

    invoke-static {p0, v1, v2}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->access$firstOrNull(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Landroidx/compose/ui/tooling/data/Group;

    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/data/Group;->getData()Ljava/util/Collection;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "T"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x3

    .line 11
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const/4 v1, 0x2

    .line 12
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    if-eqz v2, :cond_2

    .line 13
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method private final firstOrNull(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/tooling/data/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/tooling/data/Group;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/tooling/data/Group;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->findGroupsThatMatchPredicate(Landroidx/compose/ui/tooling/data/Group;Lkotlin/jvm/functions/Function1;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/tooling/data/Group;

    return-object p1
.end method

.method public static synthetic getClock$ui_tooling_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private static synthetic getContent$annotations()V
    .locals 0

    return-void
.end method

.method private final getDesignInfoMethodOrNull(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getDesignInfo"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getFileName(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceLocation;->getSourceFile()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private final getLineNumber(Landroidx/compose/ui/tooling/data/Group;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceLocation;->getLineNumber()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private final hasNullSourcePosition(Landroidx/compose/ui/tooling/data/Group;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->getFileName(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->getLineNumber(Landroidx/compose/ui/tooling/data/Group;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final init(Landroid/util/AttributeSet;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v15, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    invoke-static {v15, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    iget-object v1, v15, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    invoke-static {v15, v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 3
    iget-object v1, v15, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeViewModelStoreOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;

    invoke-static {v15, v1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    iget-object v1, v15, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composeView:Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "http://schemas.android.com/tools"

    const-string v2, "composableName"

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 6
    invoke-static {v2, v3, v4, v5, v4}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v2, v3, v4, v5, v4}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "parameterProviderIndex"

    const/4 v5, 0x0

    .line 8
    invoke-interface {v0, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v3, "parameterProviderClass"

    .line 9
    invoke-interface {v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {v3}, Landroidx/compose/ui/tooling/PreviewUtilsKt;->asPreviewProviderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    :try_start_0
    const-string v4, "animationClockStartTime"

    .line 11
    invoke-interface {v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "attrs.getAttributeValue(\u2026animationClockStartTime\")"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v8, -0x1

    :goto_1
    const-string v4, "forceCompositionInvalidation"

    .line 12
    invoke-interface {v0, v1, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 13
    iget-boolean v4, v15, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugPaintBounds:Z

    const-string/jumbo v5, "paintBounds"

    .line 14
    invoke-interface {v0, v1, v5, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 15
    iget-boolean v4, v15, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugViewInfos:Z

    const-string/jumbo v11, "printViewInfos"

    .line 16
    invoke-interface {v0, v1, v11, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 17
    iget-boolean v4, v15, Landroidx/compose/ui/tooling/ComposeViewAdapter;->lookForDesignInfoProviders:Z

    const-string v12, "findDesignInfoProviders"

    .line 18
    invoke-interface {v0, v1, v12, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "designInfoProvidersArgument"

    .line 19
    invoke-interface {v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc00

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v4, v7

    move v6, v11

    move-wide v7, v8

    move v9, v10

    move v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v15, v18

    .line 20
    invoke-static/range {v0 .. v15}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->init$ui_tooling_release$default(Landroidx/compose/ui/tooling/ComposeViewAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;IZZJZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic init$ui_tooling_release$default(Landroidx/compose/ui/tooling/ComposeViewAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;IZZJZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const-wide/16 v4, -0x1

    move-wide v10, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    move/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v14, v2

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 1
    sget-object v1, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$1;->INSTANCE:Landroidx/compose/ui/tooling/ComposeViewAdapter$init$1;

    move-object v15, v1

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 2
    sget-object v0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$2;->INSTANCE:Landroidx/compose/ui/tooling/ComposeViewAdapter$init$2;

    move-object/from16 v16, v0

    goto :goto_9

    :cond_9
    move-object/from16 v16, p13

    :goto_9
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 3
    invoke-virtual/range {v3 .. v16}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->init$ui_tooling_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;IZZJZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final invalidateComposition()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->content:Landroidx/compose/runtime/MutableState;

    sget-object v1, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->INSTANCE:Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ComposableSingletons$ComposeViewAdapterKt;->getLambda-3$ui_tooling_release()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->content:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->previewComposition:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final invokeGetDesignInfo(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->getDesignInfoMethodOrNull(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v2, p3

    const/4 p2, 0x2

    .line 4
    iget-object v4, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoProvidersArgument:Ljava/lang/String;

    aput-object v4, v2, p2

    .line 5
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type kotlin.String"

    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method private final isNullGroup(Landroidx/compose/ui/tooling/data/Group;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->hasNullSourcePosition(Landroidx/compose/ui/tooling/data/Group;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final processViewInfos()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->slotTableRecord:Landroidx/compose/ui/tooling/CompositionDataRecord;

    invoke-interface {v0}, Landroidx/compose/ui/tooling/CompositionDataRecord;->getStore()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Landroidx/compose/runtime/tooling/CompositionData;

    .line 5
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->asTree(Landroidx/compose/runtime/tooling/CompositionData;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Landroidx/compose/ui/tooling/data/Group;

    .line 9
    invoke-direct {p0, v2}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->toViewInfo(Landroidx/compose/ui/tooling/data/Group;)Landroidx/compose/ui/tooling/ViewInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->viewInfos:Ljava/util/List;

    .line 10
    iget-boolean v1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugViewInfos:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/ViewInfo;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 12
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->walkTable$default(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/ViewInfo;IILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final toViewInfo(Landroidx/compose/ui/tooling/data/Group;)Landroidx/compose/ui/tooling/ViewInfo;
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->hasNullSourcePosition(Landroidx/compose/ui/tooling/data/Group;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/tooling/data/Group;

    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->toViewInfo(Landroidx/compose/ui/tooling/data/Group;)Landroidx/compose/ui/tooling/ViewInfo;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/tooling/data/Group;

    .line 6
    invoke-direct {p0, v4}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->isNullGroup(Landroidx/compose/ui/tooling/data/Group;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Landroidx/compose/ui/tooling/data/Group;

    .line 10
    invoke-direct {p0, v1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->toViewInfo(Landroidx/compose/ui/tooling/data/Group;)Landroidx/compose/ui/tooling/ViewInfo;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    new-instance v0, Landroidx/compose/ui/tooling/ViewInfo;

    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/data/SourceLocation;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, ""

    :cond_5
    move-object v6, v1

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/compose/ui/tooling/data/SourceLocation;->getLineNumber()I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    const/4 v7, -0x1

    .line 14
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v8

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v9

    move-object v5, v0

    .line 16
    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/tooling/ViewInfo;-><init>(Ljava/lang/String;ILandroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/tooling/data/SourceLocation;Ljava/util/List;)V

    return-object v0
.end method

.method private final walkTable(Landroidx/compose/ui/tooling/ViewInfo;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|  "

    invoke-static {v2, p2}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/ViewInfo;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/tooling/ViewInfo;

    add-int/lit8 v1, p2, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->walkTable(Landroidx/compose/ui/tooling/ViewInfo;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic walkTable$default(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/ViewInfo;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->walkTable(Landroidx/compose/ui/tooling/ViewInfo;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->forceCompositionInvalidation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->invalidateComposition()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->onDraw:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugPaintBounds:Z

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->viewInfos:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Landroidx/compose/ui/tooling/ViewInfo;

    .line 9
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/ui/tooling/ViewInfo;->allChildren()Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/ViewInfo;

    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ViewInfo;->hasBounds()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ViewInfo;->getBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v3

    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ViewInfo;->getBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v4

    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ViewInfo;->getBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v5

    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/ViewInfo;->getBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v1

    .line 18
    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    iget-object v1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugBoundsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final dispose$ui_tooling_release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composeView:Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->clock:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->getClock$ui_tooling_release()Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 5
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeViewModelStoreOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeViewModelStoreOwner$1;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    return-void
.end method

.method public final getClock$ui_tooling_release()Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->clock:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "clock"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDesignInfoList$ui_tooling_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoList:Ljava/util/List;

    return-object v0
.end method

.method public final getViewInfos$ui_tooling_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->viewInfos:Ljava/util/List;

    return-object v0
.end method

.method public final hasAnimations()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->hasAnimations:Z

    return v0
.end method

.method public final init$ui_tooling_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;IZZJZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
            "*>;>;IZZJZZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move-object v6, p2

    move-object/from16 v0, p13

    const-string v1, "className"

    move-object v5, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "methodName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "onCommit"

    move-object/from16 v2, p12

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p5

    .line 1
    iput-boolean v1, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugPaintBounds:Z

    move/from16 v1, p6

    .line 2
    iput-boolean v1, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->debugViewInfos:Z

    .line 3
    iput-object v6, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composableName:Ljava/lang/String;

    move/from16 v1, p9

    .line 4
    iput-boolean v1, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->forceCompositionInvalidation:Z

    move/from16 v1, p10

    .line 5
    iput-boolean v1, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->lookForDesignInfoProviders:Z

    if-nez p11, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object/from16 v1, p11

    .line 6
    :goto_0
    iput-object v1, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoProvidersArgument:Ljava/lang/String;

    .line 7
    iput-object v0, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->onDraw:Lkotlin/jvm/functions/Function0;

    const v10, -0x65993ed1

    const/4 v11, 0x1

    .line 8
    new-instance v12, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3;

    move-object v0, v12

    move-object/from16 v1, p12

    move-object v2, p0

    move-wide/from16 v3, p7

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/tooling/ComposeViewAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V

    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    iput-object v0, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->previewComposition:Lkotlin/jvm/functions/Function2;

    .line 9
    iget-object v1, v9, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composeView:Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composeView:Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->FakeSavedStateRegistryOwner:Landroidx/compose/ui/tooling/ComposeViewAdapter$FakeSavedStateRegistryOwner$1;

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->delayedException:Landroidx/compose/ui/tooling/ThreadSafeException;

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/ThreadSafeException;->throwIfPresent()V

    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->processViewInfos()V

    .line 4
    iget-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->composableName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->findAndTrackAnimations()V

    .line 6
    iget-boolean p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->lookForDesignInfoProviders:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->findDesignInfoProviders()V

    :cond_1
    return-void
.end method

.method public final setClock$ui_tooling_release(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->clock:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    return-void
.end method

.method public final setDesignInfoList$ui_tooling_release(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->designInfoList:Ljava/util/List;

    return-void
.end method

.method public final setViewInfos$ui_tooling_release(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/ViewInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter;->viewInfos:Ljava/util/List;

    return-void
.end method
