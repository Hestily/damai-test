.class public final Landroidx/constraintlayout/compose/ChainStyle$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/compose/ChainStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\"\u0010\u000c\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0007\u0012\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\r\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0007\u0012\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/ChainStyle$Companion;",
        "",
        "",
        "bias",
        "Landroidx/constraintlayout/compose/ChainStyle;",
        "Packed",
        "Spread",
        "Landroidx/constraintlayout/compose/ChainStyle;",
        "getSpread",
        "()Landroidx/constraintlayout/compose/ChainStyle;",
        "getSpread$annotations",
        "()V",
        "SpreadInside",
        "getSpreadInside",
        "getSpreadInside$annotations",
        "getPacked",
        "getPacked$annotations",
        "<init>",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/compose/ChainStyle$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getPacked$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    return-void
.end method

.method public static synthetic getSpread$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    return-void
.end method

.method public static synthetic getSpreadInside$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    return-void
.end method


# virtual methods
.method public final Packed(F)Landroidx/constraintlayout/compose/ChainStyle;
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/compose/ChainStyle;

    sget-object v1, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/compose/ChainStyle;-><init>(Landroidx/constraintlayout/core/state/State$Chain;Ljava/lang/Float;)V

    return-object v0
.end method

.method public final getPacked()Landroidx/constraintlayout/compose/ChainStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/constraintlayout/compose/ChainStyle;->access$getPacked$cp()Landroidx/constraintlayout/compose/ChainStyle;

    move-result-object v0

    return-object v0
.end method

.method public final getSpread()Landroidx/constraintlayout/compose/ChainStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/constraintlayout/compose/ChainStyle;->access$getSpread$cp()Landroidx/constraintlayout/compose/ChainStyle;

    move-result-object v0

    return-object v0
.end method

.method public final getSpreadInside()Landroidx/constraintlayout/compose/ChainStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/constraintlayout/compose/ChainStyle;->access$getSpreadInside$cp()Landroidx/constraintlayout/compose/ChainStyle;

    move-result-object v0

    return-object v0
.end method
