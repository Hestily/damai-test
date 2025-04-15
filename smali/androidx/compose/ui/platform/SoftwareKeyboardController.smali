.class public interface abstract Landroidx/compose/ui/platform/SoftwareKeyboardController;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation build Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation


# virtual methods
.method public abstract hide()V
.end method

.method public abstract hideSoftwareKeyboard()V
    .annotation runtime Lkotlin/Deprecated;
        message = "Use hide instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hide()"
            imports = {}
        .end subannotation
    .end annotation
.end method

.method public abstract show()V
.end method

.method public abstract showSoftwareKeyboard()V
    .annotation runtime Lkotlin/Deprecated;
        message = "Use show instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "show()"
            imports = {}
        .end subannotation
    .end annotation
.end method
