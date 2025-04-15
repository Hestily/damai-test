.class final Landroidx/compose/ui/node/CanFocusChecker;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/focus/FocusProperties;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static canFocusValue:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/CanFocusChecker;

    invoke-direct {v0}, Landroidx/compose/ui/node/CanFocusChecker;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/CanFocusChecker;->INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanFocus()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic getDown()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->a(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getEnd()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->b(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getEnter()Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->c(Landroidx/compose/ui/focus/FocusProperties;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExit()Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->d(Landroidx/compose/ui/focus/FocusProperties;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLeft()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->e(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getNext()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->f(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPrevious()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->g(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getRight()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->h(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStart()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->i(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->j(Landroidx/compose/ui/focus/FocusProperties;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final isCanFocusSet()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    return-void
.end method

.method public setCanFocus(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic setDown(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->k(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public synthetic setEnd(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->l(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public synthetic setEnter(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->m(Landroidx/compose/ui/focus/FocusProperties;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic setExit(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->n(Landroidx/compose/ui/focus/FocusProperties;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic setLeft(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->o(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public synthetic setNext(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->p(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public synthetic setPrevious(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->q(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public synthetic setRight(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->r(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public synthetic setStart(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->s(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public synthetic setUp(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusProperties$-CC;->t(Landroidx/compose/ui/focus/FocusProperties;Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method
