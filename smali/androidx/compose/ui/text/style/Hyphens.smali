.class public final Landroidx/compose/ui/text/style/Hyphens;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/Hyphens$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field private static final Auto:Landroidx/compose/ui/text/style/Hyphens;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:Landroidx/compose/ui/text/style/Hyphens;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/Hyphens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/Hyphens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/Hyphens;

    invoke-direct {v0}, Landroidx/compose/ui/text/style/Hyphens;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/style/Hyphens;->None:Landroidx/compose/ui/text/style/Hyphens;

    .line 2
    new-instance v0, Landroidx/compose/ui/text/style/Hyphens;

    invoke-direct {v0}, Landroidx/compose/ui/text/style/Hyphens;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:Landroidx/compose/ui/text/style/Hyphens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAuto$cp()Landroidx/compose/ui/text/style/Hyphens;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:Landroidx/compose/ui/text/style/Hyphens;

    return-object v0
.end method

.method public static final synthetic access$getNone$cp()Landroidx/compose/ui/text/style/Hyphens;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/Hyphens;->None:Landroidx/compose/ui/text/style/Hyphens;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/Hyphens;->None:Landroidx/compose/ui/text/style/Hyphens;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hyphens.None"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:Landroidx/compose/ui/text/style/Hyphens;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Hyphens.Auto"

    goto :goto_0

    :cond_1
    const-string v0, "Invalid"

    :goto_0
    return-object v0
.end method
