.class final Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $flowResult:Landroidx/compose/foundation/layout/FlowResult;

.field final synthetic $measureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

.field final synthetic $outPosition:[I

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/FlowResult;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;[ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$flowResult:Landroidx/compose/foundation/layout/FlowResult;

    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$measureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$outPosition:[I

    iput-object p4, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$flowResult:Landroidx/compose/foundation/layout/FlowResult;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlowResult;->getItems()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$measureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$outPosition:[I

    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$flowMeasurePolicy$1$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    .line 5
    :cond_0
    aget-object v6, v0, v5

    check-cast v6, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    .line 6
    aget v7, v2, v5

    .line 7
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    .line 8
    invoke-virtual {v1, p1, v6, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeHelper(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;ILandroidx/compose/ui/unit/LayoutDirection;)V

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_0

    :cond_1
    return-void
.end method
