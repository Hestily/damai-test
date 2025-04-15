.class final Landroidx/compose/ui/tooling/data/SourceLocationInfo;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final length:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lineNumber:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final offset:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->lineNumber:Ljava/lang/Integer;

    iput-object p2, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->offset:Ljava/lang/Integer;

    iput-object p3, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->length:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getLength()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->length:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLineNumber()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->lineNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOffset()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->offset:Ljava/lang/Integer;

    return-object v0
.end method
