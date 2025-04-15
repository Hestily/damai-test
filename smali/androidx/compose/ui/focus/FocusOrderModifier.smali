.class public interface abstract Landroidx/compose/ui/focus/FocusOrderModifier;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOrderModifier$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use Modifier.focusProperties() instead"
.end annotation


# virtual methods
.method public abstract populateFocusOrder(Landroidx/compose/ui/focus/FocusOrder;)V
    .param p1    # Landroidx/compose/ui/focus/FocusOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
