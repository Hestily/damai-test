.class final Landroidx/room/QueryInterceptorStatement;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# instance fields
.field private final mBindArgsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

.field private final mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private final mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mSqlStatement:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/room/RoomDatabase$QueryCallback;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$QueryCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    .line 3
    iput-object p1, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 4
    iput-object p2, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 5
    iput-object p3, p0, Landroidx/room/QueryInterceptorStatement;->mSqlStatement:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/QueryInterceptorStatement;->lambda$simpleQueryForString$4()V

    return-void
.end method

.method public static synthetic b(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/QueryInterceptorStatement;->lambda$execute$0()V

    return-void
.end method

.method public static synthetic c(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/QueryInterceptorStatement;->lambda$executeInsert$2()V

    return-void
.end method

.method public static synthetic d(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/QueryInterceptorStatement;->lambda$executeUpdateDelete$1()V

    return-void
.end method

.method public static synthetic e(Landroidx/room/QueryInterceptorStatement;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/QueryInterceptorStatement;->lambda$simpleQueryForLong$3()V

    return-void
.end method

.method private synthetic lambda$execute$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->mSqlStatement:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$executeInsert$2()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->mSqlStatement:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$executeUpdateDelete$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->mSqlStatement:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$simpleQueryForLong$3()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->mSqlStatement:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$simpleQueryForString$4()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->mSqlStatement:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private saveArgsToCache(ILjava/lang/Object;)V
    .locals 3

    add-int/lit8 p1, p1, -0x1

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mBindArgsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/f0;

    invoke-direct {v1, p0}, Landroidx/room/f0;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/g0;

    invoke-direct {v1, p0}, Landroidx/room/g0;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/h0;

    invoke-direct {v1, p0}, Landroidx/room/h0;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method public simpleQueryForLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/i0;

    invoke-direct {v1, p0}, Landroidx/room/i0;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/e0;

    invoke-direct {v1, p0}, Landroidx/room/e0;-><init>(Landroidx/room/QueryInterceptorStatement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorStatement;->mDelegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
