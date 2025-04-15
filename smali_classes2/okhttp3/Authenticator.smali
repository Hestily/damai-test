.class public interface abstract Lokhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final NONE:Lokhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ltb/jd;->a:Ltb/jd;

    sput-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lokhttp3/r;Lokhttp3/p;)Lokhttp3/n;
    .param p1    # Lokhttp3/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
