.class final Landroidx/compose/ui/node/Snake;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final data:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/Snake;->data:[I

    return-void
.end method

.method public static final addDiagonalToStack-impl([ILandroidx/compose/ui/node/IntStack;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/node/IntStack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "diagonals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getHasAdditionOrRemoval-impl([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getReverse-impl([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->isAddition-impl([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v2

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    :goto_0
    return-void
.end method

.method public static final synthetic box-impl([I)Landroidx/compose/ui/node/Snake;
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/Snake;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/Snake;-><init>([I)V

    return-object v0
.end method

.method public static constructor-impl([I)[I
    .locals 1
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl([ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/node/Snake;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/node/Snake;

    invoke-virtual {p1}, Landroidx/compose/ui/node/Snake;->unbox-impl()[I

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0([I[I)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final getDiagonalSize-impl([I)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndY-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final getEndX-impl([I)I
    .locals 1

    const/4 v0, 0x2

    .line 1
    aget p0, p0, v0

    return p0
.end method

.method public static final getEndY-impl([I)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    aget p0, p0, v0

    return p0
.end method

.method private static final getHasAdditionOrRemoval-impl([I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndY-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result p0

    sub-int/2addr v1, p0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getReverse-impl([I)Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    aget p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getStartX-impl([I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget p0, p0, v0

    return p0
.end method

.method public static final getStartY-impl([I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    aget p0, p0, v0

    return p0
.end method

.method public static hashCode-impl([I)I
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method private static final isAddition-impl([I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndY-impl([I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v1

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result p0

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toString-impl([I)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snake("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartX-impl([I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getStartY-impl([I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndX-impl([I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getEndY-impl([I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/ui/node/Snake;->getReverse-impl([I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/Snake;->data:[I

    invoke-static {v0, p1}, Landroidx/compose/ui/node/Snake;->equals-impl([ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getData()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/Snake;->data:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/Snake;->data:[I

    invoke-static {v0}, Landroidx/compose/ui/node/Snake;->hashCode-impl([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/Snake;->data:[I

    invoke-static {v0}, Landroidx/compose/ui/node/Snake;->toString-impl([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()[I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/Snake;->data:[I

    return-object v0
.end method
