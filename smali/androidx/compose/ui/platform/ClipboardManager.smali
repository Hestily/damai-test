.class public interface abstract Landroidx/compose/ui/platform/ClipboardManager;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract getText()Landroidx/compose/ui/text/AnnotatedString;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasText()Z
.end method

.method public abstract setText(Landroidx/compose/ui/text/AnnotatedString;)V
    .param p1    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
