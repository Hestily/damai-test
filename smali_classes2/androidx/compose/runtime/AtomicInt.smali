.class public final Landroidx/compose/runtime/AtomicInt;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final delegate:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final add(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final get()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getDelegate()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final set(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
