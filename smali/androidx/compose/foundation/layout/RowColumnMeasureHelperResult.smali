.class public final Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final beforeCrossAxisAlignmentLine:I

.field private final crossAxisSize:I

.field private final endIndex:I

.field private final mainAxisPositions:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainAxisSize:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(IIIII[I)V
    .locals 1
    .param p6    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mainAxisPositions"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    .line 3
    iput p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    .line 4
    iput p3, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    .line 5
    iput p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    .line 6
    iput p5, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    .line 7
    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    return-void
.end method


# virtual methods
.method public final getBeforeCrossAxisAlignmentLine()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    return v0
.end method

.method public final getEndIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    return v0
.end method

.method public final getMainAxisPositions()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    return-object v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    return v0
.end method

.method public final getStartIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    return v0
.end method
