.class Landroidx/recyclerview/widget/DiffUtil$Snake;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Snake"
.end annotation


# instance fields
.field public endX:I

.field public endY:I

.field public reverse:Z

.field public startX:I

.field public startY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method diagonalSize()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method hasAdditionOrRemoval()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAddition()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method toDiagonal()Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->hasAdditionOrRemoval()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->isAddition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    return-object v0
.end method
