.class final Landroidx/room/QueryInterceptorOpenHelper;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/room/DelegatingOpenHelper;
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# instance fields
.field private final mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private final mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private final mQueryCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Landroidx/sqlite/db/SupportSQLiteOpenHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$QueryCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/QueryInterceptorOpenHelper;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 3
    iput-object p2, p0, Landroidx/room/QueryInterceptorOpenHelper;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 4
    iput-object p3, p0, Landroidx/room/QueryInterceptorOpenHelper;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorOpenHelper;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorOpenHelper;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorOpenHelper;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Landroidx/room/QueryInterceptorOpenHelper;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/QueryInterceptorOpenHelper;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v3, p0, Landroidx/room/QueryInterceptorOpenHelper;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroidx/room/QueryInterceptorDatabase;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Landroidx/room/QueryInterceptorOpenHelper;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/QueryInterceptorOpenHelper;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object v3, p0, Landroidx/room/QueryInterceptorOpenHelper;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroidx/room/QueryInterceptorDatabase;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorOpenHelper;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
