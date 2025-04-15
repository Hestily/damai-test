.class public final Landroidx/constraintlayout/compose/AnchorFunctions;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/compose/AnchorFunctions$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0014\u0010\u0007\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003RB\u0010\u000e\u001a+\u0012\'\u0012%\u0012!\u0012\u001f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00020\u000c\u00a2\u0006\u0002\u0008\r0\u000b0\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R<\u0010\u0013\u001a%\u0012!\u0012\u001f\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0012\u00a2\u0006\u0002\u0008\r0\u000b0\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R0\u0010\u0017\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0012\u00a2\u0006\u0002\u0008\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/AnchorFunctions;",
        "",
        "Landroidx/constraintlayout/core/state/ConstraintReference;",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "",
        "clearLeft",
        "clearRight",
        "",
        "index",
        "verticalAnchorIndexToFunctionIndex",
        "",
        "Lkotlin/Function3;",
        "Lkotlin/ExtensionFunctionType;",
        "verticalAnchorFunctions",
        "[[Lkotlin/jvm/functions/Function3;",
        "getVerticalAnchorFunctions",
        "()[[Lkotlin/jvm/functions/Function3;",
        "Lkotlin/Function2;",
        "horizontalAnchorFunctions",
        "[[Lkotlin/jvm/functions/Function2;",
        "getHorizontalAnchorFunctions",
        "()[[Lkotlin/jvm/functions/Function2;",
        "baselineAnchorFunction",
        "Lkotlin/jvm/functions/Function2;",
        "getBaselineAnchorFunction",
        "()Lkotlin/jvm/functions/Function2;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final baselineAnchorFunction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final horizontalAnchorFunctions:[[Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final verticalAnchorFunctions:[[Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/constraintlayout/compose/AnchorFunctions;

    invoke-direct {v0}, Landroidx/constraintlayout/compose/AnchorFunctions;-><init>()V

    sput-object v0, Landroidx/constraintlayout/compose/AnchorFunctions;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions;

    const/4 v0, 0x2

    new-array v1, v0, [[Lkotlin/jvm/functions/Function3;

    new-array v2, v0, [Lkotlin/jvm/functions/Function3;

    .line 1
    sget-object v3, Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$1;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$1;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    sget-object v3, Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$2;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$2;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v0, [Lkotlin/jvm/functions/Function3;

    .line 3
    sget-object v3, Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$3;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$3;

    aput-object v3, v2, v4

    .line 4
    sget-object v3, Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$4;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$verticalAnchorFunctions$4;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    .line 5
    sput-object v1, Landroidx/constraintlayout/compose/AnchorFunctions;->verticalAnchorFunctions:[[Lkotlin/jvm/functions/Function3;

    new-array v1, v0, [[Lkotlin/jvm/functions/Function2;

    new-array v2, v0, [Lkotlin/jvm/functions/Function2;

    .line 6
    sget-object v3, Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$1;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$1;

    aput-object v3, v2, v4

    .line 7
    sget-object v3, Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$2;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$2;

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Lkotlin/jvm/functions/Function2;

    .line 8
    sget-object v2, Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$3;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$3;

    aput-object v2, v0, v4

    .line 9
    sget-object v2, Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$4;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$horizontalAnchorFunctions$4;

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    .line 10
    sput-object v1, Landroidx/constraintlayout/compose/AnchorFunctions;->horizontalAnchorFunctions:[[Lkotlin/jvm/functions/Function2;

    .line 11
    sget-object v0, Landroidx/constraintlayout/compose/AnchorFunctions$baselineAnchorFunction$1;->INSTANCE:Landroidx/constraintlayout/compose/AnchorFunctions$baselineAnchorFunction$1;

    sput-object v0, Landroidx/constraintlayout/compose/AnchorFunctions;->baselineAnchorFunction:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearLeft(Landroidx/constraintlayout/compose/AnchorFunctions;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/compose/AnchorFunctions;->clearLeft(Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method

.method public static final synthetic access$clearRight(Landroidx/constraintlayout/compose/AnchorFunctions;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/compose/AnchorFunctions;->clearRight(Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method

.method private final clearLeft(Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 3
    sget-object v1, Landroidx/constraintlayout/compose/AnchorFunctions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_0
    return-void
.end method

.method private final clearRight(Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 3
    sget-object v1, Landroidx/constraintlayout/compose/AnchorFunctions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_0
    return-void
.end method


# virtual methods
.method public final getBaselineAnchorFunction()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/constraintlayout/compose/AnchorFunctions;->baselineAnchorFunction:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getHorizontalAnchorFunctions()[[Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/constraintlayout/compose/AnchorFunctions;->horizontalAnchorFunctions:[[Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getVerticalAnchorFunctions()[[Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/constraintlayout/core/state/ConstraintReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/constraintlayout/compose/AnchorFunctions;->verticalAnchorFunctions:[[Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final verticalAnchorIndexToFunctionIndex(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method
