.class public final Landroidx/constraintlayout/compose/Visibility$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/compose/Visibility;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0008R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\"\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\n\u0010\u0006R\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u0012\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/Visibility$Companion;",
        "",
        "Landroidx/constraintlayout/compose/Visibility;",
        "Visible",
        "Landroidx/constraintlayout/compose/Visibility;",
        "getVisible",
        "()Landroidx/constraintlayout/compose/Visibility;",
        "getVisible$annotations",
        "()V",
        "Invisible",
        "getInvisible",
        "getInvisible$annotations",
        "Gone",
        "getGone",
        "getGone$annotations",
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

    invoke-direct {p0}, Landroidx/constraintlayout/compose/Visibility$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getGone$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    return-void
.end method

.method public static synthetic getInvisible$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    return-void
.end method

.method public static synthetic getVisible$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getGone()Landroidx/constraintlayout/compose/Visibility;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/constraintlayout/compose/Visibility;->access$getGone$cp()Landroidx/constraintlayout/compose/Visibility;

    move-result-object v0

    return-object v0
.end method

.method public final getInvisible()Landroidx/constraintlayout/compose/Visibility;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/constraintlayout/compose/Visibility;->access$getInvisible$cp()Landroidx/constraintlayout/compose/Visibility;

    move-result-object v0

    return-object v0
.end method

.method public final getVisible()Landroidx/constraintlayout/compose/Visibility;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/constraintlayout/compose/Visibility;->access$getVisible$cp()Landroidx/constraintlayout/compose/Visibility;

    move-result-object v0

    return-object v0
.end method
