.class public final Landroidx/compose/ui/node/Nodes;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/Nodes;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/Nodes;

    invoke-direct {v0}, Landroidx/compose/ui/node/Nodes;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/Nodes;->INSTANCE:Landroidx/compose/ui/node/Nodes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAny-OLwlOKw()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getAny-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getDraw-OLwlOKw()I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getDraw-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getFocusEvent-OLwlOKw()I
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getFocusEvent-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getFocusProperties-OLwlOKw()I
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getFocusProperties-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getFocusTarget-OLwlOKw()I
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getFocusTarget-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getGlobalPositionAware-OLwlOKw()I
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getGlobalPositionAware-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getIntermediateMeasure-OLwlOKw()I
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getIntermediateMeasure-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getKeyInput-OLwlOKw()I
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getKeyInput-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLayout-OLwlOKw()I
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getLayout-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLayoutAware-OLwlOKw()I
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getLayoutAware-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLocals-OLwlOKw()I
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getLocals-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getParentData-OLwlOKw()I
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getParentData-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getPointerInput-OLwlOKw()I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getPointerInput-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getRotaryInput-OLwlOKw()I
    .locals 1

    const/16 v0, 0x4000

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getRotaryInput-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getSemantics-OLwlOKw()I
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static synthetic getSemantics-OLwlOKw$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
