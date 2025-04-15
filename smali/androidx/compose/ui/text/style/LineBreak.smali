.class public final Landroidx/compose/ui/text/style/LineBreak;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation build Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineBreak$Companion;,
        Landroidx/compose/ui/text/style/LineBreak$Strategy;,
        Landroidx/compose/ui/text/style/LineBreak$Strictness;,
        Landroidx/compose/ui/text/style/LineBreak$WordBreak;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Heading:Landroidx/compose/ui/text/style/LineBreak;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Paragraph:Landroidx/compose/ui/text/style/LineBreak;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Simple:Landroidx/compose/ui/text/style/LineBreak;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final strategy:I

.field private final strictness:I

.field private final wordBreak:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/ui/text/style/LineBreak$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineBreak$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/LineBreak;

    .line 2
    sget-object v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;->getSimple-fcGXIks()I

    move-result v3

    .line 3
    sget-object v4, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;->getNormal-usljTpc()I

    move-result v5

    .line 4
    sget-object v6, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;->getDefault-jp8hJ3c()I

    move-result v7

    .line 5
    invoke-direct {v0, v3, v5, v7, v1}, Landroidx/compose/ui/text/style/LineBreak;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak;->Simple:Landroidx/compose/ui/text/style/LineBreak;

    .line 6
    new-instance v0, Landroidx/compose/ui/text/style/LineBreak;

    .line 7
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;->getBalanced-fcGXIks()I

    move-result v3

    .line 8
    invoke-virtual {v4}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;->getLoose-usljTpc()I

    move-result v5

    .line 9
    invoke-virtual {v6}, Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;->getPhrase-jp8hJ3c()I

    move-result v7

    .line 10
    invoke-direct {v0, v3, v5, v7, v1}, Landroidx/compose/ui/text/style/LineBreak;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak;->Heading:Landroidx/compose/ui/text/style/LineBreak;

    .line 11
    new-instance v0, Landroidx/compose/ui/text/style/LineBreak;

    .line 12
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;->getHighQuality-fcGXIks()I

    move-result v2

    .line 13
    invoke-virtual {v4}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;->getStrict-usljTpc()I

    move-result v3

    .line 14
    invoke-virtual {v6}, Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;->getDefault-jp8hJ3c()I

    move-result v4

    .line 15
    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/compose/ui/text/style/LineBreak;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak;->Paragraph:Landroidx/compose/ui/text/style/LineBreak;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/ui/text/style/LineBreak;->strategy:I

    .line 3
    iput p2, p0, Landroidx/compose/ui/text/style/LineBreak;->strictness:I

    .line 4
    iput p3, p0, Landroidx/compose/ui/text/style/LineBreak;->wordBreak:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/style/LineBreak;-><init>(III)V

    return-void
.end method

.method public static final synthetic access$getHeading$cp()Landroidx/compose/ui/text/style/LineBreak;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/LineBreak;->Heading:Landroidx/compose/ui/text/style/LineBreak;

    return-object v0
.end method

.method public static final synthetic access$getParagraph$cp()Landroidx/compose/ui/text/style/LineBreak;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/LineBreak;->Paragraph:Landroidx/compose/ui/text/style/LineBreak;

    return-object v0
.end method

.method public static final synthetic access$getSimple$cp()Landroidx/compose/ui/text/style/LineBreak;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/LineBreak;->Simple:Landroidx/compose/ui/text/style/LineBreak;

    return-object v0
.end method

.method public static synthetic copy-vyCVYYw$default(Landroidx/compose/ui/text/style/LineBreak;IIIILjava/lang/Object;)Landroidx/compose/ui/text/style/LineBreak;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    iget p1, p0, Landroidx/compose/ui/text/style/LineBreak;->strategy:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 2
    iget p2, p0, Landroidx/compose/ui/text/style/LineBreak;->strictness:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 3
    iget p3, p0, Landroidx/compose/ui/text/style/LineBreak;->wordBreak:I

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/style/LineBreak;->copy-vyCVYYw(III)Landroidx/compose/ui/text/style/LineBreak;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-vyCVYYw(III)Landroidx/compose/ui/text/style/LineBreak;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/LineBreak;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/ui/text/style/LineBreak;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
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

    .line 1
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/LineBreak;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->strategy:I

    check-cast p1, Landroidx/compose/ui/text/style/LineBreak;

    iget v3, p1, Landroidx/compose/ui/text/style/LineBreak;->strategy:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->strictness:I

    iget v3, p1, Landroidx/compose/ui/text/style/LineBreak;->strictness:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->wordBreak:I

    iget p1, p1, Landroidx/compose/ui/text/style/LineBreak;->wordBreak:I

    invoke-static {v1, p1}, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getStrategy-fcGXIks()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineBreak;->strategy:I

    return v0
.end method

.method public final getStrictness-usljTpc()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineBreak;->strictness:I

    return v0
.end method

.method public final getWordBreak-jp8hJ3c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineBreak;->wordBreak:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineBreak;->strategy:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->strictness:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->wordBreak:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineBreak(strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->strategy:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strictness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->strictness:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wordBreak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/LineBreak;->wordBreak:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
