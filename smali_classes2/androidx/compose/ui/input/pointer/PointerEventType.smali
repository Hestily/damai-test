.class public final Landroidx/compose/ui/input/pointer/PointerEventType;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/PointerEventType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Enter:I

.field private static final Exit:I

.field private static final Move:I

.field private static final Press:I

.field private static final Release:I

.field private static final Scroll:I

.field private static final Unknown:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Unknown:I

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Press:I

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Release:I

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Move:I

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Enter:I

    const/4 v0, 0x5

    .line 6
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Exit:I

    const/4 v0, 0x6

    .line 7
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Scroll:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/input/pointer/PointerEventType;->value:I

    return-void
.end method

.method public static final synthetic access$getEnter$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Enter:I

    return v0
.end method

.method public static final synthetic access$getExit$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Exit:I

    return v0
.end method

.method public static final synthetic access$getMove$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Move:I

    return v0
.end method

.method public static final synthetic access$getPress$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Press:I

    return v0
.end method

.method public static final synthetic access$getRelease$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Release:I

    return v0
.end method

.method public static final synthetic access$getScroll$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Scroll:I

    return v0
.end method

.method public static final synthetic access$getUnknown$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Unknown:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/input/pointer/PointerEventType;
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerEventType;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/pointer/PointerEventType;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/input/pointer/PointerEventType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEventType;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEventType;->unbox-impl()I

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
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Press:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Press"

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Release:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Release"

    goto :goto_0

    .line 3
    :cond_1
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Move:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Move"

    goto :goto_0

    .line 4
    :cond_2
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Enter:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Enter"

    goto :goto_0

    .line 5
    :cond_3
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Exit:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Exit"

    goto :goto_0

    .line 6
    :cond_4
    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Scroll:I

    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Scroll"

    goto :goto_0

    :cond_5
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerEventType;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerEventType;->value:I

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerEventType;->value:I

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerEventType;->value:I

    return v0
.end method
