.class public final Landroidx/compose/ui/input/key/KeyEventType;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/key/KeyEventType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KeyDown:I

.field private static final KeyUp:I

.field private static final Unknown:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/key/KeyEventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/key/KeyEventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/key/KeyEventType;->Unknown:I

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyUp:I

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyDown:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/input/key/KeyEventType;->value:I

    return-void
.end method

.method public static final synthetic access$getKeyDown$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyDown:I

    return v0
.end method

.method public static final synthetic access$getKeyUp$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyUp:I

    return v0
.end method

.method public static final synthetic access$getUnknown$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->Unknown:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/input/key/KeyEventType;
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/key/KeyEventType;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/key/KeyEventType;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/input/key/KeyEventType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/input/key/KeyEventType;

    invoke-virtual {p1}, Landroidx/compose/ui/input/key/KeyEventType;->unbox-impl()I

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
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyUp:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "KeyUp"

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyDown:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "KeyDown"

    goto :goto_0

    .line 3
    :cond_1
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->Unknown:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Unknown"

    goto :goto_0

    :cond_2
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/key/KeyEventType;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/key/KeyEventType;->value:I

    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/key/KeyEventType;->value:I

    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/key/KeyEventType;->value:I

    return v0
.end method
