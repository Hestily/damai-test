.class public interface abstract Lokhttp3/Callback;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract onResponse(Lokhttp3/Call;Lokhttp3/p;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
