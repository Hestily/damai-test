.class public final Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/BeyondBoundsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutDirection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field private static final Above:I

.field private static final After:I

.field private static final Before:I

.field private static final Below:I

.field public static final Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Left:I

.field private static final Right:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    const/4 v0, 0x6

    .line 6
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    return-void
.end method

.method public static final synthetic access$getAbove$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    return v0
.end method

.method public static final synthetic access$getAfter$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    return v0
.end method

.method public static final synthetic access$getBefore$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    return v0
.end method

.method public static final synthetic access$getBelow$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    return v0
.end method

.method public static final synthetic access$getLeft$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    return v0
.end method

.method public static final synthetic access$getRight$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->unbox-impl()I

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
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Before"

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "After"

    goto :goto_0

    .line 3
    :cond_1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Left"

    goto :goto_0

    .line 4
    :cond_2
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Right"

    goto :goto_0

    .line 5
    :cond_3
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Above"

    goto :goto_0

    .line 6
    :cond_4
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Below"

    goto :goto_0

    :cond_5
    const-string p0, "invalid LayoutDirection"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    return v0
.end method
