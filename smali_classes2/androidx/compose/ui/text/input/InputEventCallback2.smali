.class public interface abstract Landroidx/compose/ui/text/input/InputEventCallback2;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract onConnectionClosed(Landroidx/compose/ui/text/input/RecordingInputConnection;)V
    .param p1    # Landroidx/compose/ui/text/input/RecordingInputConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onEditCommands(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onImeAction-KlQnJC8(I)V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)V
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
