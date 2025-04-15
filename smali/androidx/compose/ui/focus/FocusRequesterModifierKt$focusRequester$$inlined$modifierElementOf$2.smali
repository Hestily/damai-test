.class public final Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$2;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $focusRequester$inlined:Landroidx/compose/ui/focus/FocusRequester;

.field final synthetic $focusRequester$inlined$1:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$2;->$focusRequester$inlined:Landroidx/compose/ui/focus/FocusRequester;

    iput-object p4, p0, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$2;->$focusRequester$inlined$1:Landroidx/compose/ui/focus/FocusRequester;

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
            "Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;

    iget-object v1, p0, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$2;->$focusRequester$inlined:Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;-><init>(Landroidx/compose/ui/focus/FocusRequester;)V

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
            "Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;",
            ")",
            "Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;

    .line 2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusRequesterModifierKt$focusRequester$$inlined$modifierElementOf$2;->$focusRequester$inlined$1:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequesterModifierNodeImpl;->getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
