.class public final Landroidx/compose/ui/tooling/data/SourceLocation;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final length:I

.field private final lineNumber:I

.field private final offset:I

.field private final packageHash:I

.field private final sourceFile:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    .line 3
    iput p2, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    .line 4
    iput p3, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    .line 5
    iput-object p4, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    .line 6
    iput p5, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/tooling/data/SourceLocation;IIILjava/lang/String;IILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Landroidx/compose/ui/tooling/data/SourceLocation;->copy(IIILjava/lang/String;I)Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    return v0
.end method

.method public final copy(IIILjava/lang/String;I)Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Landroidx/compose/ui/tooling/data/SourceLocation;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/tooling/data/SourceLocation;-><init>(IIILjava/lang/String;I)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/tooling/data/SourceLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/tooling/data/SourceLocation;

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    iget v3, p1, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    iget v3, p1, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    iget v3, p1, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    iget p1, p1, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    return v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    return v0
.end method

.method public final getPackageHash()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    return v0
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceLocation(lineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->sourceFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceLocation;->packageHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
