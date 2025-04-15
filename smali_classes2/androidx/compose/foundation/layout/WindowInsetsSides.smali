.class public final Landroidx/compose/foundation/layout/WindowInsetsSides;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field private static final AllowLeftInLtr:I

.field private static final AllowLeftInRtl:I

.field private static final AllowRightInLtr:I

.field private static final AllowRightInRtl:I

.field private static final Bottom:I

.field public static final Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final End:I

.field private static final Horizontal:I

.field private static final Left:I

.field private static final Right:I

.field private static final Start:I

.field private static final Top:I

.field private static final Vertical:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInLtr:I

    const/4 v1, 0x4

    .line 2
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInLtr:I

    const/4 v2, 0x2

    .line 3
    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    move-result v2

    sput v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInRtl:I

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    move-result v3

    sput v3, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInRtl:I

    .line 5
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v4

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    .line 6
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v4

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    const/16 v4, 0x10

    .line 7
    invoke-static {v4}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    move-result v4

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    const/16 v5, 0x20

    .line 8
    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    move-result v5

    sput v5, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    .line 9
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v0

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    .line 10
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v1

    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v0

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    .line 12
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v0

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Vertical:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    return-void
.end method

.method public static final synthetic access$getAllowLeftInLtr$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInLtr:I

    return v0
.end method

.method public static final synthetic access$getAllowLeftInRtl$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInRtl:I

    return v0
.end method

.method public static final synthetic access$getAllowRightInLtr$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInLtr:I

    return v0
.end method

.method public static final synthetic access$getAllowRightInRtl$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInRtl:I

    return v0
.end method

.method public static final synthetic access$getBottom$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    return v0
.end method

.method public static final synthetic access$getEnd$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    return v0
.end method

.method public static final synthetic access$getHorizontal$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    return v0
.end method

.method public static final synthetic access$getLeft$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    return v0
.end method

.method public static final synthetic access$getRight$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    return v0
.end method

.method public static final synthetic access$getStart$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    return v0
.end method

.method public static final synthetic access$getTop$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    return v0
.end method

.method public static final synthetic access$getVertical$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Vertical:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/foundation/layout/WindowInsetsSides;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsSides;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->unbox-impl()I

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

.method public static final hasAny-bkgdKaI$foundation_layout_release(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

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

.method public static final plus-gK_yJZ4(II)I
    .locals 0

    or-int/2addr p0, p1

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowInsetsSides("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final valueToString-impl(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1

    const-string v1, "Left"

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4
    :cond_1
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2

    const-string v1, "Top"

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5
    :cond_2
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    and-int v2, p0, v1

    if-ne v2, v1, :cond_3

    const-string v1, "End"

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6
    :cond_3
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    and-int v2, p0, v1

    if-ne v2, v1, :cond_4

    const-string v1, "Right"

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7
    :cond_4
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5

    const-string p0, "Bottom"

    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 8
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final valueToString_impl$lambda$0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    return v0
.end method
