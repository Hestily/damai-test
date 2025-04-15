.class public final Landroidx/compose/ui/input/key/KeyInputModifierKt$onKeyEvent$$inlined$modifierElementOf$2;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/key/KeyInputModifierKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $onKeyEvent$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $onKeyEvent$inlined$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p3, p0, Landroidx/compose/ui/input/key/KeyInputModifierKt$onKeyEvent$$inlined$modifierElementOf$2;->$onKeyEvent$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/ui/input/key/KeyInputModifierKt$onKeyEvent$$inlined$modifierElementOf$2;->$onKeyEvent$inlined$1:Lkotlin/jvm/functions/Function1;

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p1, p3, p2}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/ui/Modifier$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;

    iget-object v1, p0, Landroidx/compose/ui/input/key/KeyInputModifierKt$onKeyEvent$$inlined$modifierElementOf$2;->$onKeyEvent$inlined:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

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
            "Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;",
            ")",
            "Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;

    .line 2
    iget-object v1, p0, Landroidx/compose/ui/input/key/KeyInputModifierKt$onKeyEvent$$inlined$modifierElementOf$2;->$onKeyEvent$inlined$1:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/key/KeyInputInputModifierNodeImpl;->setOnEvent(Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method
