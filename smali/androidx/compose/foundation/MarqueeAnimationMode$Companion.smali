.class public final Landroidx/compose/foundation/MarqueeAnimationMode$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/MarqueeAnimationMode;
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

    invoke-direct {p0}, Landroidx/compose/foundation/MarqueeAnimationMode$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getImmediately-ZbEOnfQ$annotations()V
    .locals 0
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getWhileFocused-ZbEOnfQ$annotations()V
    .locals 0
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getImmediately-ZbEOnfQ()I
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/MarqueeAnimationMode;->access$getImmediately$cp()I

    move-result v0

    return v0
.end method

.method public final getWhileFocused-ZbEOnfQ()I
    .locals 1
    .annotation build Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/MarqueeAnimationMode;->access$getWhileFocused$cp()I

    move-result v0

    return v0
.end method
