.class final Landroidx/compose/ui/tooling/data/SourceInformationContext;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Landroidx/compose/ui/tooling/data/UiToolingDataApi;
.end annotation


# instance fields
.field private final isCall:Z

.field private final locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextLocation:I

.field private final packageHash:I

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Parameter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final repeatOffset:I

.field private final sourceFile:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
            ">;I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Parameter;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "locations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    .line 4
    iput p3, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    .line 5
    iput-object p4, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    .line 6
    iput p5, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    .line 7
    iput-object p6, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->parameters:Ljava/util/List;

    .line 8
    iput-boolean p7, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isCall:Z

    return-void
.end method


# virtual methods
.method public final getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageHash()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    return v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Parameter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public final getRepeatOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    return v0
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public final isCall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isCall:Z

    return v0
.end method

.method public final nextSourceLocation()Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    if-ltz v0, :cond_0

    .line 2
    iput v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    .line 3
    :cond_0
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 4
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;

    .line 5
    new-instance v7, Landroidx/compose/ui/tooling/data/SourceLocation;

    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLineNumber()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getOffset()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    .line 8
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    .line 9
    :goto_2
    iget-object v5, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    .line 10
    iget v6, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v0

    .line 11
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/tooling/data/SourceLocation;-><init>(IIILjava/lang/String;I)V

    return-object v7

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final sourceLocation(ILandroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 8
    .param p2    # Landroidx/compose/ui/tooling/data/SourceInformationContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_9

    .line 4
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/tooling/data/SourceLocationInfo;

    .line 5
    new-instance v0, Landroidx/compose/ui/tooling/data/SourceLocation;

    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLineNumber()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getOffset()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 8
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLength()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    .line 9
    :goto_2
    iget-object v2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    if-nez v2, :cond_5

    if-eqz p2, :cond_4

    iget-object v6, p2, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v6, v1

    goto :goto_3

    :cond_5
    move-object v6, v2

    :goto_3
    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    .line 10
    iget p2, p2, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    goto :goto_4

    :cond_6
    iget p2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move v7, p2

    goto :goto_5

    :cond_8
    const/4 v7, -0x1

    :goto_5
    move-object v2, v0

    move v3, v4

    move v4, v5

    move v5, p1

    .line 11
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/tooling/data/SourceLocation;-><init>(IIILjava/lang/String;I)V

    return-object v0

    :cond_9
    return-object v1
.end method
