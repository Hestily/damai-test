.class public final Landroidx/compose/ui/focus/FocusOrder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use FocusProperties instead"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final focusProperties:Landroidx/compose/ui/focus/FocusProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/FocusOrder;-><init>(Landroidx/compose/ui/focus/FocusProperties;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "focusProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    return-void
.end method


# virtual methods
.method public final getDown()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getDown()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final getEnd()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getEnd()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final getLeft()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getLeft()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final getNext()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getNext()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final getPrevious()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getPrevious()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final getRight()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getRight()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final getStart()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getStart()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final getUp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getUp()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public final setDown(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "down"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setDown(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public final setEnd(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "end"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setEnd(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public final setLeft(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setLeft(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public final setNext(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setNext(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public final setPrevious(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setPrevious(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public final setRight(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "right"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setRight(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public final setStart(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setStart(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method

.method public final setUp(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "up"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setUp(Landroidx/compose/ui/focus/FocusRequester;)V

    return-void
.end method
