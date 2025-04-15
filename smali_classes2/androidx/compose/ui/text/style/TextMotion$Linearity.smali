.class public final Landroidx/compose/ui/text/style/TextMotion$Linearity;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/TextMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Linearity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FontHinting:I

.field private static final Linear:I

.field private static final None:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Companion:Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Linear:I

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->FontHinting:I

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->None:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    return-void
.end method

.method public static final synthetic access$getFontHinting$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->FontHinting:I

    return v0
.end method

.method public static final synthetic access$getLinear$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Linear:I

    return v0
.end method

.method public static final synthetic access$getNone$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->None:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/text/style/TextMotion$Linearity;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Linear:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Linearity.Linear"

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->FontHinting:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Linearity.FontHinting"

    goto :goto_0

    .line 3
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->None:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Linearity.None"

    goto :goto_0

    :cond_2
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    return v0
.end method
