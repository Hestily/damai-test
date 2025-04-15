.class public final Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$$inlined$modifierElementOf$2;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/focus/FocusChangedModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $onFocusChanged$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $onFocusChanged$inlined$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$$inlined$modifierElementOf$2;->$onFocusChanged$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$$inlined$modifierElementOf$2;->$onFocusChanged$inlined$1:Lkotlin/jvm/functions/Function1;

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p1, p3, p2}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/ui/Modifier$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/focus/FocusChangedModifierNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusChangedModifierNode;

    iget-object v1, p0, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$$inlined$modifierElementOf$2;->$onFocusChanged$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusChangedModifierNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public update(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier$Node;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusChangedModifierNode;",
            ")",
            "Landroidx/compose/ui/focus/FocusChangedModifierNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/focus/FocusChangedModifierNode;

    .line 2
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusChangedModifierKt$onFocusChanged$$inlined$modifierElementOf$2;->$onFocusChanged$inlined$1:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusChangedModifierNode;->setOnFocusChanged(Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method
