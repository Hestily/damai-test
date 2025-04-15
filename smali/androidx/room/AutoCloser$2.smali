.class Landroidx/room/AutoCloser$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/AutoCloser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/AutoCloser;


# direct methods
.method constructor <init>(Landroidx/room/AutoCloser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-object v0, v0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-wide v4, v3, Landroidx/room/AutoCloser;->mLastDecrementRefCountTimeStamp:J

    sub-long/2addr v1, v4

    iget-wide v4, v3, Landroidx/room/AutoCloser;->mAutoCloseTimeoutInMs:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget v1, v3, Landroidx/room/AutoCloser;->mRefCount:I

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    iget-object v1, v3, Landroidx/room/AutoCloser;->mOnAutoCloseCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 8
    iget-object v1, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-object v1, v1, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    :try_start_1
    iget-object v1, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-object v1, v1, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-static {v1}, Landroidx/room/util/SneakyThrow;->reThrow(Ljava/lang/Exception;)V

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 12
    :cond_2
    monitor-exit v0

    return-void

    .line 13
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mOnAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
