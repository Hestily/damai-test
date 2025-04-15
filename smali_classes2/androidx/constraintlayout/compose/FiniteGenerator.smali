.class public final Landroidx/constraintlayout/compose/FiniteGenerator;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/constraintlayout/compose/GeneratedValue;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006R\u0016\u0010\u0008\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000bR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\tR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\tR\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/FiniteGenerator;",
        "Landroidx/constraintlayout/compose/GeneratedValue;",
        "",
        "value",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "array",
        "step",
        "F",
        "prefix",
        "Ljava/lang/String;",
        "postfix",
        "current",
        "",
        "stop",
        "Z",
        "initial",
        "max",
        "from",
        "to",
        "<init>",
        "(FFFLjava/lang/String;Ljava/lang/String;)V",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private current:F

.field private initial:F

.field private max:F

.field private postfix:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private prefix:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private step:F

.field private stop:Z


# direct methods
.method public constructor <init>(FFFLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "prefix"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "postfix"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->step:F

    iput-object p4, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->prefix:Ljava/lang/String;

    .line 3
    iput-object p5, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->postfix:Ljava/lang/String;

    .line 4
    iput p1, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->current:F

    .line 5
    iput p1, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->initial:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->max:F

    return-void
.end method

.method public synthetic constructor <init>(FFFLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    const-string p7, ""

    if-eqz p3, :cond_1

    move-object v4, p7

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v5, p7

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/compose/FiniteGenerator;-><init>(FFFLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final array()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->initial:F

    float-to-int v2, v1

    float-to-int v1, v1

    .line 3
    iget v3, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->max:F

    float-to-int v3, v3

    if-gt v1, v3, :cond_1

    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->postfix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget v5, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->step:F

    float-to-int v5, v5

    add-int/2addr v2, v5

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public value()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->current:F

    iget v1, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->max:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->stop:Z

    .line 3
    :cond_0
    iget-boolean v1, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->stop:Z

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->step:F

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->current:F

    .line 5
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/compose/FiniteGenerator;->current:F

    return v0
.end method
