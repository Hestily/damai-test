.class public Landroid/taobao/windvane/extra/uc/UCCoreController;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "UCCoreController"

.field private static final sRegisteredThreadANRCallback:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/UCCoreController;->sRegisteredThreadANRCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerThreadANRCallback(Landroid/taobao/windvane/fullspan/SpanWrapper;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/UCCoreController;->sRegisteredThreadANRCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "registerThreadANRCallback"

    .line 2
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->log(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/taobao/windvane/extra/uc/UCCoreController$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/UCCoreController$1;-><init>(Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    :cond_0
    return-void
.end method
