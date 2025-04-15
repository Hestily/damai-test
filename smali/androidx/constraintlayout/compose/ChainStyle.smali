.class public final Landroidx/constraintlayout/compose/ChainStyle;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/compose/ChainStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB!\u0008\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eR \u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00088\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/ChainStyle;",
        "",
        "Landroidx/constraintlayout/core/state/State$Chain;",
        "Landroidx/constraintlayout/compose/SolverChain;",
        "style",
        "Landroidx/constraintlayout/core/state/State$Chain;",
        "getStyle$compose_release",
        "()Landroidx/constraintlayout/core/state/State$Chain;",
        "",
        "bias",
        "Ljava/lang/Float;",
        "getBias$compose_release",
        "()Ljava/lang/Float;",
        "<init>",
        "(Landroidx/constraintlayout/core/state/State$Chain;Ljava/lang/Float;)V",
        "Companion",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/constraintlayout/compose/ChainStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Packed:Landroidx/constraintlayout/compose/ChainStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Spread:Landroidx/constraintlayout/compose/ChainStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SpreadInside:Landroidx/constraintlayout/compose/ChainStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bias:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final style:Landroidx/constraintlayout/core/state/State$Chain;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/constraintlayout/compose/ChainStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/ChainStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/constraintlayout/compose/ChainStyle;->Companion:Landroidx/constraintlayout/compose/ChainStyle$Companion;

    .line 1
    new-instance v2, Landroidx/constraintlayout/compose/ChainStyle;

    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v4, v1}, Landroidx/constraintlayout/compose/ChainStyle;-><init>(Landroidx/constraintlayout/core/state/State$Chain;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Landroidx/constraintlayout/compose/ChainStyle;->Spread:Landroidx/constraintlayout/compose/ChainStyle;

    .line 2
    new-instance v2, Landroidx/constraintlayout/compose/ChainStyle;

    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    invoke-direct {v2, v3, v1, v4, v1}, Landroidx/constraintlayout/compose/ChainStyle;-><init>(Landroidx/constraintlayout/core/state/State$Chain;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Landroidx/constraintlayout/compose/ChainStyle;->SpreadInside:Landroidx/constraintlayout/compose/ChainStyle;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/compose/ChainStyle$Companion;->Packed(F)Landroidx/constraintlayout/compose/ChainStyle;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/compose/ChainStyle;->Packed:Landroidx/constraintlayout/compose/ChainStyle;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/State$Chain;Ljava/lang/Float;)V
    .locals 1
    .param p1    # Landroidx/constraintlayout/core/state/State$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/compose/ChainStyle;->style:Landroidx/constraintlayout/core/state/State$Chain;

    .line 3
    iput-object p2, p0, Landroidx/constraintlayout/compose/ChainStyle;->bias:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/constraintlayout/core/state/State$Chain;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/compose/ChainStyle;-><init>(Landroidx/constraintlayout/core/state/State$Chain;Ljava/lang/Float;)V

    return-void
.end method

.method public static final synthetic access$getPacked$cp()Landroidx/constraintlayout/compose/ChainStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/compose/ChainStyle;->Packed:Landroidx/constraintlayout/compose/ChainStyle;

    return-object v0
.end method

.method public static final synthetic access$getSpread$cp()Landroidx/constraintlayout/compose/ChainStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/compose/ChainStyle;->Spread:Landroidx/constraintlayout/compose/ChainStyle;

    return-object v0
.end method

.method public static final synthetic access$getSpreadInside$cp()Landroidx/constraintlayout/compose/ChainStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/compose/ChainStyle;->SpreadInside:Landroidx/constraintlayout/compose/ChainStyle;

    return-object v0
.end method


# virtual methods
.method public final getBias$compose_release()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/ChainStyle;->bias:Ljava/lang/Float;

    return-object v0
.end method

.method public final getStyle$compose_release()Landroidx/constraintlayout/core/state/State$Chain;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/compose/ChainStyle;->style:Landroidx/constraintlayout/core/state/State$Chain;

    return-object v0
.end method
