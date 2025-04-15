.class final Landroidx/compose/ui/tooling/data/Parameter;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final inlineClass:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sortedIndex:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/ui/tooling/data/Parameter;->sortedIndex:I

    .line 3
    iput-object p2, p0, Landroidx/compose/ui/tooling/data/Parameter;->inlineClass:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/tooling/data/Parameter;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getInlineClass()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/Parameter;->inlineClass:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/tooling/data/Parameter;->sortedIndex:I

    return v0
.end method
