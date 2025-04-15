.class public final Landroidx/compose/ui/focus/FocusTargetModifierNode$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/focus/FocusTargetModifierNode;
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

    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFocusTargetModifierElement$ui_release()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->access$getFocusTargetModifierElement$cp()Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
