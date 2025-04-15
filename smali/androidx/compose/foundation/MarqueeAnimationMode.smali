.class public final Landroidx/compose/foundation/MarqueeAnimationMode;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MarqueeAnimationMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Immediately:I

.field private static final WhileFocused:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Immediately:I

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/MarqueeAnimationMode;->WhileFocused:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    return-void
.end method

.method public static final synthetic access$getImmediately$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Immediately:I

    return v0
.end method

.method public static final synthetic access$getWhileFocused$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->WhileFocused:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/foundation/MarqueeAnimationMode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/MarqueeAnimationMode;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/MarqueeAnimationMode;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/MarqueeAnimationMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/MarqueeAnimationMode;

    invoke-virtual {p1}, Landroidx/compose/foundation/MarqueeAnimationMode;->unbox-impl()I

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
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->Immediately:I

    invoke-static {p0, v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Immediately"

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroidx/compose/foundation/MarqueeAnimationMode;->WhileFocused:I

    invoke-static {p0, v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "WhileFocused"

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    invoke-static {v0, p1}, Landroidx/compose/foundation/MarqueeAnimationMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    invoke-static {v0}, Landroidx/compose/foundation/MarqueeAnimationMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    return v0
.end method
