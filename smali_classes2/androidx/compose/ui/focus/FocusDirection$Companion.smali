.class public final Landroidx/compose/ui/focus/FocusDirection$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/focus/FocusDirection;
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

    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusDirection$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getEnter-dhqQ-8s$annotations()V
    .locals 0
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    return-void
.end method

.method public static synthetic getExit-dhqQ-8s$annotations()V
    .locals 0
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    return-void
.end method

.method public static synthetic getIn-dhqQ-8s$annotations()V
    .locals 0
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use FocusDirection.Enter instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Enter"
            imports = {
                "androidx.compose.ui.focus.FocusDirection.Companion.Enter"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic getOut-dhqQ-8s$annotations()V
    .locals 0
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use FocusDirection.Exit instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Exit"
            imports = {
                "androidx.compose.ui.focus.FocusDirection.Companion.Exit"
            }
        .end subannotation
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDown-dhqQ-8s()I
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getDown$cp()I

    move-result v0

    return v0
.end method

.method public final getEnter-dhqQ-8s()I
    .locals 1
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getEnter$cp()I

    move-result v0

    return v0
.end method

.method public final getExit-dhqQ-8s()I
    .locals 1
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getExit$cp()I

    move-result v0

    return v0
.end method

.method public final getIn-dhqQ-8s()I
    .locals 1
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getIn$cp()I

    move-result v0

    return v0
.end method

.method public final getLeft-dhqQ-8s()I
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getLeft$cp()I

    move-result v0

    return v0
.end method

.method public final getNext-dhqQ-8s()I
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getNext$cp()I

    move-result v0

    return v0
.end method

.method public final getOut-dhqQ-8s()I
    .locals 1
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getOut$cp()I

    move-result v0

    return v0
.end method

.method public final getPrevious-dhqQ-8s()I
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getPrevious$cp()I

    move-result v0

    return v0
.end method

.method public final getRight-dhqQ-8s()I
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getRight$cp()I

    move-result v0

    return v0
.end method

.method public final getUp-dhqQ-8s()I
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusDirection;->access$getUp$cp()I

    move-result v0

    return v0
.end method
