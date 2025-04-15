.class final Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnsupportedComposeAnimationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final animations:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->animations:Ljava/util/LinkedHashSet;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->animations:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final trackAnimation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation;->Companion:Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation$Companion;->getApiAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->lock:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v3, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->animations:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-static {v2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$getDEBUG$p(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {v2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$getTAG$p(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already being tracked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit v1

    return-void

    .line 7
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->animations:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v1

    .line 9
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$getDEBUG$p(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$getTAG$p(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is now tracked"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    invoke-virtual {v0, p2}, Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation$Companion;->create(Ljava/lang/String;)Landroidx/compose/ui/tooling/animation/UnsupportedComposeAnimation;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$UnsupportedComposeAnimationSubscriber;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    .line 12
    invoke-virtual {p2}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->getTrackedUnsupported$ui_tooling_release()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 13
    check-cast p1, Landroidx/compose/animation/tooling/ComposeAnimation;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->notifySubscribe(Landroidx/compose/animation/tooling/ComposeAnimation;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v1

    throw p1
.end method
