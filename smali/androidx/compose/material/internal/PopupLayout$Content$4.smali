.class final Landroidx/compose/material/internal/PopupLayout$Content$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Taobao"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/internal/PopupLayout;->Content(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $tmp0_rcvr:Landroidx/compose/material/internal/PopupLayout;


# direct methods
.method constructor <init>(Landroidx/compose/material/internal/PopupLayout;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout$Content$4;->$tmp0_rcvr:Landroidx/compose/material/internal/PopupLayout;

    iput p2, p0, Landroidx/compose/material/internal/PopupLayout$Content$4;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/internal/PopupLayout$Content$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Landroidx/compose/material/internal/PopupLayout$Content$4;->$tmp0_rcvr:Landroidx/compose/material/internal/PopupLayout;

    iget v0, p0, Landroidx/compose/material/internal/PopupLayout$Content$4;->$$changed:I

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/internal/PopupLayout;->Content(Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
