.class public final Landroidx/compose/ui/focus/FocusOwnerImpl$special$$inlined$modifierElementOf$2;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusOwnerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusOwnerImpl;)V
    .locals 1

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$special$$inlined$modifierElementOf$2;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p2, v0, p1}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/focus/FocusTargetModifierNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$special$$inlined$modifierElementOf$2;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getRootFocusNode$ui_release()Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p1    # Landroidx/compose/ui/Modifier$Node;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
            ")",
            "Landroidx/compose/ui/focus/FocusTargetModifierNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
