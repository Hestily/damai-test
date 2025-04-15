.class public final Landroidx/compose/ui/node/NodeCoordinator$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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

    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getPointerInputSource$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getPointerInputSource()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource<",
            "Landroidx/compose/ui/node/PointerInputModifierNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->access$getPointerInputSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    move-result-object v0

    return-object v0
.end method

.method public final getSemanticsSource()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource<",
            "Landroidx/compose/ui/node/SemanticsModifierNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->access$getSemanticsSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    move-result-object v0

    return-object v0
.end method
