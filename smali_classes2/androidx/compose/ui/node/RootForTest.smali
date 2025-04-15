.class public interface abstract Landroidx/compose/ui/node/RootForTest;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract getDensity()Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTextInputService()Landroidx/compose/ui/text/input/TextInputService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract measureAndLayoutForTest()V
    .annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation
.end method

.method public abstract sendKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
