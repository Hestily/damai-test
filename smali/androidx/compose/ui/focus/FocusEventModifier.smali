.class public interface abstract Landroidx/compose/ui/focus/FocusEventModifier;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusEventModifier$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use FocusEventModifierNode instead"
.end annotation


# virtual methods
.method public abstract onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .param p1    # Landroidx/compose/ui/focus/FocusState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
