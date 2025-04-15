.class final Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/FlowLayoutKt;->breakDownItems(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/OrientationIndependentConstraints;I)Landroidx/compose/foundation/layout/FlowResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $placeables:[Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>([Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$placeables:[Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$index:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->invoke(Landroidx/compose/ui/layout/Placeable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$placeables:[Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$index:I

    add-int/lit8 v1, v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method
