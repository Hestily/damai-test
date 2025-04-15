.class final Landroidx/compose/ui/text/input/ImmHelper21;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/text/input/ImmHelper;


# instance fields
.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/ImmHelper21;->view:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/ImmHelper21;->showSoftInput$lambda$0(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V

    return-void
.end method

.method private static final showSoftInput$lambda$0(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V
    .locals 1

    const-string v0, "$imm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/text/input/ImmHelper21;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method public hideSoftInput(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1    # Landroid/view/inputmethod/InputMethodManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string v0, "imm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/ImmHelper21;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public showSoftInput(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1    # Landroid/view/inputmethod/InputMethodManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string v0, "imm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/ImmHelper21;->view:Landroid/view/View;

    new-instance v1, Landroidx/compose/ui/text/input/a;

    invoke-direct {v1, p1, p0}, Landroidx/compose/ui/text/input/a;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
