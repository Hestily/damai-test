.class public final Landroidx/compose/foundation/layout/FlowResult;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final crossAxisTotalSize:I

.field private final items:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainAxisTotalSize:I


# direct methods
.method public constructor <init>(IILandroidx/compose/runtime/collection/MutableVector;)V
    .locals 1
    .param p3    # Landroidx/compose/runtime/collection/MutableVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/foundation/layout/FlowResult;->mainAxisTotalSize:I

    .line 3
    iput p2, p0, Landroidx/compose/foundation/layout/FlowResult;->crossAxisTotalSize:I

    .line 4
    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowResult;->items:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method


# virtual methods
.method public final getCrossAxisTotalSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/FlowResult;->crossAxisTotalSize:I

    return v0
.end method

.method public final getItems()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowResult;->items:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final getMainAxisTotalSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/FlowResult;->mainAxisTotalSize:I

    return v0
.end method
