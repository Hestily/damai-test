.class public interface abstract Lokhttp3/internal/cache/InternalCache;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract get(Lokhttp3/n;)Lokhttp3/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract put(Lokhttp3/p;)Lokhttp3/internal/cache/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract remove(Lokhttp3/n;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lokhttp3/internal/cache/b;)V
.end method

.method public abstract update(Lokhttp3/p;Lokhttp3/p;)V
.end method
