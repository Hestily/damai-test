.class public final synthetic Landroidx/compose/ui/text/input/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic b:Landroidx/compose/ui/text/input/ImmHelper21;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/a;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Landroidx/compose/ui/text/input/a;->b:Landroidx/compose/ui/text/input/ImmHelper21;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/input/a;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/compose/ui/text/input/a;->b:Landroidx/compose/ui/text/input/ImmHelper21;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImmHelper21;->a(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V

    return-void
.end method
